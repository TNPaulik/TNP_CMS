<?php

class SiteController extends Controller
{
	protected $topslider = false;
	protected $activetab = '';
	protected $botmap = true;
	protected $site;
	protected $siteurl;
	
	protected $sites;
	protected $sitesByParent;
	
	protected $curele; //current element set before renderPartial()
	protected $renderclean; //if its rendered w/o html
	
	protected static $language;
	
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		$this->activetab = '';
		
		$this->render('index');
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionStandorte()
	{
		$this->activetab = 'standorte';		
		$this->botmap = false;		
		$this->render('standorte');
	}

	/**
	 * Displays the contact page
	 */
	public function actionKontakt()
	{		
		$this->activetab = 'kontakt';
		
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode('Kundenanfrage von '.$model->name.'('.$model->phone.')').'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-type: text/plain; charset=UTF-8";

				mail('tnpaulik@gmail.com'/*Yii::app()->params['adminEmail']*/,$subject,$model->message,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				//$this->refresh();
			}
		}
		$this->render('kontakt',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}
	
	public function actionDynamic() {
		
		if ($this->site) {
			if (method_exists($this, 'action'.ucfirst($this->site->url))) {
				$this->{'action'.ucfirst($this->site->url)}();
			} else {				
				if (is_readable(Yii::app()->basePath.'/views/site/'.$this->site->url.'.php')) {
					$this->activetab = $this->site->url;
					//$this->botmap = false;
					$this->render($this->site->url);
				} else if ($this->site->getParent() && $this->site->getParent()->url == 'dienstleistungen') {
					$this->activetab = 'dienstleistungen';
					$this->render('sortiment');
				} else {
					$this->render('dynamic');
				}
			}
		} else {
			header('HTTP/1.0 404 Not Found');
			$this->render('notfound');
		}
	}

	public static function getLanguage() {
		if (isset($_SESSION['language']))
			self::$language = Languages::model()->findByPk($_SESSION['language']);
		
		if (!self::$language) {
			self::$language = Languages::model()->findByPk(1);
			$_SESSION['language'] = self::$language->language_id;
		}
		
		return self::$language;
	}
	
	public function beforeAction($action) {
		ini_set('date.timezone', 'Europe/Berlin');
		self::getLanguage();
		$this->getSites();
		$this->getSite();
		
		return true;
	}
	
	public function getSite() {
		$urlparts = preg_split('/\//', Yii::app()->request->requestUri);
		$this->siteurl = array_pop($urlparts);
		$this->site = Sites::model()->find('url = "'.(empty($this->siteurl) ? 'index' : $this->siteurl).'"');
		return $this->site;
	}

	public function getSites() {
		$this->sites = Sites::model()->findAll(array('order'=>'position ASC'));
		return $this->sites;
	}
	
	public function getSitesByParent($menuonly = false) {
		$this->sitesByParent = array();
		foreach ($this->sites AS $site) {
			if(!$menuonly || $site->is_in_menu) {
				if (!isset($this->sitesByParent[$site->parent_id]))
					$this->sitesByParent[$site->parent_id] = array();
				$this->sitesByParent[$site->parent_id][] = $site;
			}
		}
//		echo "<pre>";
//		print_r($this->sitesByParent);
//		
//		exit;
		return $this->sitesByParent;
	}
	
	public function renderElement($element, $clean = false) {
		$this->renderclean = $clean;
		$this->curele = $element;
		return $this->renderPartial("/elements/" . $this->curele->type);
	}
	
	public function cleanString($str) {
		$str = html_entity_decode($str, ENT_QUOTES, 'UTF-8');
		$str = strip_tags($str);
		$str = trim($str);
		return $str;
	}
}