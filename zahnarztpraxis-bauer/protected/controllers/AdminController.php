<?php

class AdminController extends Controller {

	protected $sites;
	protected $site;
	protected $sitesByParent;
	
	protected $elements;
	protected $element;
	protected $elementsByType;
	
	protected $item;
	protected $items;
	
	protected $itemtype;
	protected $itemtypes;
	
	protected $language;
	protected $languages;

	protected $bilder;
	protected $gallerien;
	
	protected $text;
	protected $texts;
	
	protected $slider;
	protected $sliders;
	protected $sliderimages;
	
	protected $elementtypes;
	
	protected $elementtypesPerItem = 5;
	
	protected static $currentLanguage;

	/**
	 * Declares class-based actions.
	 */
	public function actions() {
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha' => array(
				'class' => 'CCaptchaAction',
				'backColor' => 0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page' => array(
				'class' => 'CViewAction',
			),
		);
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError() {
		if ($error = Yii::app()->errorHandler->error) {
			if (Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * wird stets vor dem aufruf einer action ausgeführt
	 * @param type $action
	 * @return boolean 
	 */
	public function beforeAction($action) {
		$this->layout = "admin_template";
		
		$this->getSites();
		$this->getElements();
		$this->getImages();
		$this->getGalleries();
		$this->getSliders();
		$this->getSliderImages();
		$this->getTexts();
		$this->getItems();
		$this->getItemtypes();
		$this->getSitesByParent();
		$this->getLanguages();
		$this->getTexts();
		
		$this->elementtypes = Elements::$types;

		if ($this->getAction()->getId() == 'login') {
			//führ die action aus
		} else if (Yii::app()->user->isGuest) {
			// falls gast leite direkt zur loginaction weiter
			$this->redirect($this->createUrl("/admin/login"));
		}
		return true;
	}
	
	public function getSites() {
		$this->sites = Sites::model()->findAll(array('order'=>'position ASC'));
	}
	
	public function getSitesByParent() {
		$this->sitesByParent = array();
		foreach ($this->sites AS $site) {
			if (!isset($this->sitesByParent[$site->parent_id]))
				$this->sitesByParent[$site->parent_id] = array();
			$this->sitesByParent[$site->parent_id][] = $site;
		}
	}
	
	public function getElements() {
		$this->elements = Elements::model()->findAll(array('order'=>'name ASC'));
	}
	
	public function getImages() {
		$this->bilder = Bilder::model()->findAll(array('condition'=>'kategorie = "bild" AND bild_id != 0'));
	}
	
	public function getSliderImages() {
		$this->sliderimages = Bilder::model()->findAll(array('condition'=>'kategorie = "slider" AND bild_id != 0'));
	}
	
	public function getGalleries() {
		$this->gallerien = Galerie::model()->findAll(array('order'=>'datum DESC'));
	}
	
//	public function getSliders() {
//		$this->slider = Slider::model()->findAll(array('group'=>'seite', 'order'=>'seite ASC, position ASC'));
//	}
	
	public function getTexts() {
		$this->texts = Texts::model()->findAll(array('order'=>'name'));
	}
	
	public function getItems() {
		$this->items = Items::model()->findAll(array('order'=>'type'));
	}
	
	public function getItemtypes() {
		$this->itemtypes = Itemtypes::model()->findAll(array('order'=>'name'));
	}
	
	public function getElementsByType() {
		$this->elementsByType = array();
		foreach ($this->elements AS $element) {
			if (!isset($this->elementsByType[$element->type]))
				$this->elementsByType[$element->type] = array();
			$this->elementsByType[$element->type][] = $element;
		}
	}
	
	public function getLanguages() {
		$this->languages = Languages::model()->findAll(array('order'=>'name'));
	}
	
	public function getSliders() {
		$this->sliders = Sliders::model()->findAll(array('order'=>'name'));
	}

	/**
	  Startseite anzeigen
	 */
	public function actionIndex() {
		$content = Content::model()->findAll(array('condition' => "seite = 'index'"));

		if (!empty($_FILES['img']['tmp_name'])) {
			$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';
			$new_pic = new Bilder;
			$new_pic->kategorie = 'bild';
			$new_pic->save();
			move_uploaded_file($_FILES['img']['tmp_name'], $save_dir . $new_pic->bild_id . ".jpg");
			Content::model()->updateByPk($_POST["content_id"], array('bild_id' => $new_pic->bild_id));
		}

		if (isset($_POST["content_id"])) {
			Content::model()->updateByPk($_POST["content_id"], array('titel' => $_POST["titel"],
				'unterzeile' => $_POST["unterzeile"],
				'text' => $_POST["text_" . $_POST["content_id"]]));

			// falls bestehendes titelbild ausgewählt wurde, um es zu ändern
			if (strlen($_POST["title_pic_from_pool_" . $_POST["content_id"]]) > 4)
				Content::model()->updateByPk($_POST["content_id"], array('bild_id' => substr($_POST["title_pic_from_pool_" . $_POST["content_id"]], 5)));

			$content = Content::model()->findAll(array('condition' => "seite = 'index'"));
			$this->render('/admin/index', array("updated" => true, 'content' => $content));
			exit();
		}

		$this->render('/admin/index', array('content' => $content));
	}

	public function actionAktuelles() {
		$content = Aktuell::model()->findAll(array('order' => "datum DESC"));

		// bei neuem eintrag
		if (isset($_POST["new_item"])) {

			if (!empty($_FILES['img']['tmp_name'])) {
				$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';
				$new_pic = new Bilder;
				$new_pic->kategorie = 'bild';
				$new_pic->save();

				$resize = new resize($_FILES['img']['tmp_name']);
				$resize->resizeImage(1280, 1280, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);

				//move_uploaded_file($_FILES['img']['tmp_name'], $save_dir . $new_pic->bild_id . ".jpg");
			}

			$new_news = new Aktuell;
			$new_news->seite = $_POST["seite"];
			$new_news->titel = $_POST["titel"];
			$new_news->text = $_POST["text"];
			$new_news->datum = date("Y-m-d", strtotime($_POST["datum"]));
			$new_news->bild_id = (!empty($_FILES['img']['tmp_name'])) ? $new_pic->bild_id : 0;
			$new_news->galerie_id = 0;
			$new_news->save();

			$content = Aktuell::model()->findAll(array('order' => "datum DESC"));
			$this->render('/admin/aktuelles', array('content' => $content, 'new_saved' => true));
			exit();
		}

		// aktuelles wird geändert
		if (isset($_POST["update"])) {
			if (!empty($_FILES['img']['tmp_name'])) {
				$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';
				$new_pic = new Bilder;
				$new_pic->kategorie = 'bild';
				$new_pic->save();

				$resize = new resize($_FILES['img']['tmp_name']);
				$resize->resizeImage(1280, 1280, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);

				//move_uploaded_file($_FILES['img']['tmp_name'], $save_dir . $new_pic->bild_id . ".jpg");
				Aktuell::model()->updateByPk($_POST["id"], array('bild_id' => $new_pic->bild_id));
			}

			Aktuell::model()->updateByPk($_POST["id"], array('seite' => $_POST["seite"],
				'titel' => $_POST["titel"],
				'datum' => date("Y-m-d", strtotime($_POST["datum"])),
				'text' => $_POST["text_" . $_POST["id"]]
			));

			// falls bestehendes titelbild ausgewählt wurde, um es zu ändern
			if (strlen($_POST["title_pic_from_pool_" . $_POST["id"]]) > 4)
				Aktuell::model()->updateByPk($_POST["id"], array('bild_id' => substr($_POST["title_pic_from_pool_" . $_POST["id"]], 5)));


			$content = Aktuell::model()->findAll(array('order' => "datum DESC"));
			$this->render('/admin/aktuelles', array('content' => $content, 'updated' => true));
			exit();
		}

		$this->render('/admin/aktuelles', array('content' => $content));
	}
	
// *** Start Site Actions ***
	public function actionSites() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->site = Sites::model()->findByPk($_GET['id']);
			
			if ($this->site !== false) {
				$this->render('/admin/site');
			} else {
				$this->render('/admin/sites');
			}
		} else {
			$this->render('/admin/sites');
		}
	}

	public function actionSiteadd() {
		
		if (isset($_POST) && isset($_POST['name']) && isset($_POST['title']) && isset($_POST['header']) && isset($_POST['text'])) {
			$site = new Sites();
			$site->parent_id = $_POST['parent'];
			$site->is_in_menu = isset($_POST['is_in_menu']) ? 1 : 0;
			$site->position = $site->getNextPosition($site->parent_id);
			$site->iconstyle = $_POST['iconstyle'];
			$site->name = $_POST['name'];
			$site->url = $_POST['url'];
			$site->title = $_POST['title'];
			$site->header = $_POST['header'];
			$site->metakeywords = $_POST['metakeywords'];
			$site->metadescription = $_POST['metadescription'];
			$site->text = $_POST['text'];
			$site->save();
			$this->redirect(array('admin/sites'));
		} else {
			$this->render('/admin/siteadd');
		}
	}
	
	public function actionSiteedit() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->site = Sites::model()->findByPk($_GET['id']);
			
			if (is_object($this->site)) {
				if (isset($_POST) && isset($_POST['name']) && isset($_POST['title']) && isset($_POST['header']) && isset($_POST['text'])) {
					$this->site->parent_id = $_POST['parent'];
					$this->site->is_in_menu = isset($_POST['is_in_menu']) ? 1 : 0;
					$this->site->position = $_POST['position'];
					$this->site->iconstyle = $_POST['iconstyle'];
					$this->site->name = $_POST['name'];
					$this->site->url = $_POST['url'];
					$this->site->title = $_POST['title'];
					$this->site->header = $_POST['header'];
					$this->site->metakeywords = $_POST['metakeywords'];
					$this->site->metadescription = $_POST['metadescription'];
					$this->site->text = $_POST['text'];
					$this->site->save();
					$this->redirect(array('admin/sites'));
				} else {
					$this->render('/admin/siteedit');
				}				
			} else {
				$this->redirect(array('admin/sites'));
			}
		} else {
			$this->redirect(array('admin/sites'));
		}
	}
	
	public function actionSitedel() {
		$id = (int)$_GET['id'];
		Sites::model()->findByPk($id)->delete();
		$this->redirect(array('admin/sites'));
	}
	
	
// *** Start Language Actions ***
	public function actionLanguages() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->language = Languages::model()->findByPk($_GET['id']);
			
			if ($this->language !== false) {
				$this->render('/admin/language');
			} else {
				$this->render('/admin/languages');
			}
		} else {
			$this->render('/admin/languages');
		}
	}	

	public function actionLanguageadd() {
		
		if (isset($_POST) && isset($_POST['name'])) {
			$language = new Languages();
			$language->name = $_POST['name'];
			$language->save();
			$this->redirect(array('admin/languages'));
		} else {
			$this->render('/admin/languageadd');
		}
	}
	
	public function actionLanguageedit() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->language = Languages::model()->findByPk($_GET['id']);
			
			if (is_object($this->language)) {
				if (isset($_POST) && isset($_POST['name'])) {
					$this->language->name = $_POST['name'];
					$this->language->save();
					$this->redirect(array('admin/languages'));
				} else {
					$this->render('/admin/languageedit');
				}				
			} else {
				$this->redirect(array('admin/languages'));
			}
		} else {
			$this->redirect(array('admin/languages'));
		}
	}
	
	public function actionLanguagedel() {
		$id = (int)$_GET['id'];
		Languages::model()->findByPk($id)->delete();
		$this->redirect(array('admin/languages'));
	}
	
	
// *** Start Language Actions ***
	public function actionTexts() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->text = Texts::model()->findByPk($_GET['id']);
			
			if ($this->text !== false) {
				$this->render('/admin/text');
			} else {
				$this->render('/admin/texts');
			}
		} else {
			$this->render('/admin/texts');
		}
	}	

	public function actionTextadd() {
		
		if (isset($_POST) && isset($_POST['name'])) {
			$text = new Texts();
			$text->name = $_POST['name'];
			$text->save();
			$this->redirect(array('admin/texts'));
		} else {
			$this->render('/admin/textadd');
		}
	}
	
	public function actionTextedit() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->text = Texts::model()->findByPk($_GET['id']);
			
			if (is_object($this->text)) {
				if (isset($_POST) && isset($_POST['name'])) {
					$this->text->name = $_POST['name'];
					$this->text->save();
					
					foreach ($this->languages AS $language) {
						if (isset($_POST['value'.$language->language_id])) {
							$language->setText($this->text->text_id, $_POST['value'.$language->language_id]);
						}
					}
					
					$this->redirect(array('admin/texts'));
				} else {
					$this->render('/admin/textedit');
				}				
			} else {
				$this->redirect(array('admin/texts'));
			}
		} else {
			$this->redirect(array('admin/texts'));
		}
	}
	
	public function actionTextdel() {
		$id = (int)$_GET['id'];
		Texts::model()->findByPk($id)->delete();
		$this->redirect(array('admin/texts'));
	}
	

// *** Start Element Actions ***
	public function actionElements() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->element = Elements::model()->findByPk($_GET['id']);
			
			if ($this->element !== false) {
				$this->render('/admin/element');
			} else {
				$this->render('/admin/elements');
			}
		} else {
			$this->render('/admin/elements');
		}
	}	

	public function actionElementadd() {
		
		if (isset($_POST) && isset($_POST['name']) && isset($_POST['type']) && isset($_POST['foreign_id'])) {
			$element = new Elements();
			$element->name = $_POST['name'];
			$element->type = $_POST['type'];
			$element->foreign_id = $_POST['foreign_id'];
			$element->save();
			$this->redirect(array('admin/elements'));
		} else {
			$this->render('/admin/elementadd');
		}
	}
	
	public function actionElementedit() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->element = Elements::model()->findByPk($_GET['id']);
			
			if (is_object($this->element)) {
				if (isset($_POST) && isset($_POST['name']) && isset($_POST['type']) && isset($_POST['foreign_id'])) {
					$this->element->name = $_POST['name'];
					$this->element->type = $_POST['type'];
					$this->element->foreign_id = $_POST['foreign_id'];
					$this->element->save();
					$this->redirect(array('admin/elements'));
				} else {
					$this->render('/admin/elementedit');
				}				
			} else {
				$this->redirect(array('admin/elements'));
			}
		} else {
			$this->redirect(array('admin/elements'));
		}
	}
	
	public function actionElementdel() {
		$id = (int)$_GET['id'];
		Elements::model()->findByPk($id)->delete();
		$this->redirect(array('admin/elements'));
	}
	
// *** Start Item Actions ***
	public function actionItems() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->item = Items::model()->findByPk($_GET['id']);
			
			if ($this->item !== false) {
				$this->render('/admin/item');
			} else {
				$this->render('/admin/items');
			}
		} else {
			$this->render('/admin/items');
		}
	}

	public function actionItemadd() {
				
		if (!isset($_POST) || empty($_POST)) {
			$this->render('/admin/itemselecttype');
		} else if (isset($_POST) && isset($_POST['itemtype'])) {
			
			if (isset($_POST['usedefaults']) && $_POST['usedefaults'] == 'on') {
				$type = Itemtypes::model()->findByPk($_POST['itemtype']);
				$item = $type->getBlank();
				$this->redirect(array('admin/itemedit/'.$item->item_id));
			} else {
				$item = new Items();
				$item->type = $_POST['itemtype'];
				$item->save();

				for ($i = 1; isset($_POST['element'.$i]); $i++) {
					$ie = new Itemelements();
					$ie->item_id = $item->item_id;
					$ie->element_id = $_POST['element'.$i];
					$ie->position = $i;
					$ie->save();
				}
			}
			
			$this->redirect(array('admin/itemedit/'.$item->item_id));
		}
	}
	
	public function actionItemedit() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->item = Items::model()->findByPk($_GET['id']);
			
			if (is_object($this->item)) {
				if (isset($_POST) && isset($_POST['element1'])) {
					for ($i = 1; isset($_POST['element'.$i]); $i++) {
						$ie = Itemelements::model()->find('item_id = '.$this->item->item_id.' AND position = '.$i);
						if (!$ie) {
							$ie = new Itemelements();
							$ie->item_id = $this->item->item_id;
							$ie->position = $i;
						}
						$ie->element_id = $_POST['element'.$i];
						$ie->save();
					}
					$this->redirect(array('admin/items'));
				} else {
					$this->itemtype = Itemtypes::model()->findByPk($this->item->type);
					$this->getElementsByType();
					$this->render('/admin/itemedit');
				}
			} else {
				$this->redirect(array('admin/items'));
			}
		} else {
			$this->redirect(array('admin/items'));
		}
	}
	
	public function actionItemcopy() {
		$id = (int)$_GET['id'];
		$siteid = (int)$_GET['id2'];
		$copy = Items::model()->findByPk($id)->copy();
		$copy->addToSite(Sites::model()->findByPk($siteid));
		$this->redirect(Yii::app()->request->urlReferrer);
	}
	
	public function actionItemdel() {
		$id = (int)$_GET['id'];
		Items::model()->findByPk($id)->delete();
		$this->redirect(array('admin/items'));
	}
	
	public function actionSiteitemadd() {
		if (isset($_GET) && isset($_GET['id'])) {
			$this->site = Sites::model()->findByPk($_GET['id']);
			if ($this->site) {
				if (isset($_POST) && isset($_POST['item_id'])) {
					$item = Items::model()->findByPk($_POST['item_id']);
					if ($item) {
						$si = new Siteitems();
						$si->site_id = $this->site->site_id;
						$si->item_id = $item->item_id;
						$si->position = Siteitems::getNextPosition($si->site_id, $si->item_id);
						$si->save();
						$this->redirect($this->createUrl('/admin/siteedit/' . $this->site->site_id));
					} else {
						$this->render('/admin/sites');
					}
				} else if (isset($_POST) && isset($_POST['type_id'])) {
					$type = Itemtypes::model()->findByPk($_POST['type_id']);
					$item = $type->getBlank();
					
					$si = new Siteitems();
					$si->site_id = $this->site->site_id;
					$si->item_id = $item->item_id;
					$si->position = Siteitems::getNextPosition($si->site_id, $si->item_id);
					$si->save();
					
					$this->redirect($this->createUrl('/admin/siteedit/' . $this->site->site_id));
				} else {
					$this->render('/admin/siteitemadd');
				}
			} else {
				$this->render('/admin/sites');
			}
		} else {
			$this->render('/admin/sites');
		}
	}
	
	public function actionSiteitemdel() {
		$siteid = (int)$_GET['id'];
		$itemid = (int)$_GET['id2'];
		Siteitems::model()->find('site_id = '.$siteid.' AND item_id = '.$itemid)->delete();
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}

	public function actionSiteitemtypeadd() {
		if (isset($_GET) && isset($_GET['id'])) {
			$this->site = Sites::model()->findByPk($_GET['id']);
			if ($this->site) {
				if (isset($_POST) && isset($_POST['itemtype_id'])) {
					$itemtype = Itemtypes::model()->findByPk($_POST['itemtype_id']);
					if ($itemtype) {
						$sit = new Siteitemtypes();
						$sit->site_id = $this->site->site_id;
						$sit->itemtype_id = $itemtype->itemtype_id;
						$sit->position = Siteitemtypes::getNextPosition($sit->site_id, $sit->itemtype_id);
						$sit->save();
						$this->redirect($this->createUrl('/admin/sites/' . $this->site->site_id));
					} else {
						$this->render('/admin/sites');
					}
				} else {
					$this->render('/admin/siteitemtypeadd');
				}
			} else {
				$this->render('/admin/sites');
			}
		} else {
			$this->render('/admin/sites');
		}
	}
	
	/*public function actionSiteitemsedit() {
		if (isset($_GET) && isset($_GET['id'])) {
			$this->site = Sites::model()->findByPk($_GET['id']);
			if ($this->site) {
				$this->render('/admin/siteitemsedit');
			} else {
				$this->render('/admin/sites');
			}
		} else {
			$this->render('/admin/sites');
		}
	}*/


	public function actionGetimages() {
		$this->renderPartial('/site/getimages');
	}

	public function actionGetsliderimages() {
		$this->renderPartial('/site/getsliderimages');
	}

	public function actionEleimgchange() {
		$eleid = (int)$_GET['id'];
		$imgid = (int)$_GET['id2'];
		
		$ele = Elements::model()->findByPk($eleid);
		$ele->foreign_id = $imgid;
		$ele->save();
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionItemmoveup($si = false) {
		
		if (!$si) {
			$position = (int)$_GET['id'];
			$siteid = (int)$_GET['id2'];
		} else {
			$position = $si->position;
			$siteid = $si->site_id;
		}
		
		$si1 = $si ? $si : Siteitems::model()->find('site_id = ' . $siteid . ' AND position = ' . $position);
		$si2 = NULL;
		$si2_array = $this->getPrevSiteItem($si1);
		foreach ($si2_array AS $sir) {
			$si2 = Siteitems::model()->find('site_id = ' . $sir['site_id'] . ' AND position = ' . $sir['position']);
			break;
		}

		if ($si2) {
			$si1->position = $si2->position;
			$si2->position = Siteitems::getNextPosition($siteid);
			$si2->save();
			$si1->save();
			$si2->position = $position;
			$si2->save();
		}
		
		if (!$si) $this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionItemmovedown($si = false) {
		
		if (!$si) {
			$position = (int)$_GET['id'];
			$siteid = (int)$_GET['id2'];
		} else {
			$position = $si->position;
			$siteid = $si->site_id;
		}
		
		$si1 = $si ? $si : Siteitems::model()->find('site_id = ' . $siteid . ' AND position = ' . $position);
		$si2_array = $this->getNextSiteItem($si1);
		foreach ($si2_array AS $sir) {
			$si2 = Siteitems::model()->find('site_id = ' . $sir['site_id'] . ' AND position = ' . $sir['position']);
			break;
		}
		
		if ($si2) {
			$si1->position = $si2->position;
			$si2->position = Siteitems::getNextPosition($siteid);
			$si2->save();
			$si1->save();
			$si2->position = $position;
			$si2->save();		
		}
		
		if (!$si) $this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionItemmovefirst() {
		$position = (int)$_GET['id'];
		$siteid = (int)$_GET['id2'];
		
		$si1 = Siteitems::model()->find('site_id = ' . $siteid . ' AND position = ' . $position);
		
		$si2_array = $this->getPrevSiteItems($si1);
		
		$count = count($si2_array);
		
		for ($i = 0; $i < $count; $i++) {
			$this->actionItemmoveup($si1);
		}
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionItemsort() {
		
		$siteid = intval($_POST['site']);
		$items = $_POST['sorting'];
		
		print_r($siteid);
		print_r($items);
		
		foreach ($items AS $key => $item) {
			$si = Siteitems::model()->find('site_id = ' . $siteid . ' AND item_id = ' . intval($item['id']));
			$si->position = $key+1;
			$si->save();
		}		
		exit;		
	}
	
	public function actionPagesort() {
		
		$items = $_POST['sorting'];
		
		print_r($items);
		
		foreach ($items AS $key => $item) {
			$s = Sites::model()->find('site_id = ' . $item['id']);
			$s->position = $key+1;
			$s->save();
		}		
		exit;		
	}
	
	public function actionItemmovelast() {
		$position = (int)$_GET['id'];
		$siteid = (int)$_GET['id2'];
		
		$si1 = Siteitems::model()->find('site_id = ' . $siteid . ' AND position = ' . $position);
		
		$si2_array = $this->getNextSiteItems($si1);
		
		$count = count($si2_array);
		
		for ($i = 0; $i < $count; $i++) {
			$this->actionItemmovedown($si1);
		}
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionMakemagic() {
		if (isset($_POST)) {
			print_r($_POST);
			$site = Sites::model()->findByPk($_POST['siteid']);
			print_r($site->url);
		}
	}
	
	function getPrevSiteItem($siteitem) {
		return $this->doStandardQuery('
			SELECT		item_id, position, site_id
			FROM		siteitems si
			INNER JOIN	items i 
			USING		(item_id)
			WHERE		si.site_id = '.$siteitem->site_id.'
			AND			si.position < '.$siteitem->position.'
			AND			i.type = '.$siteitem->getItem()->type.'
			ORDER BY	si.position DESC
			LIMIT		1
			'
		);
	}
	
	function getPrevSiteItems($siteitem) {
		return $this->doStandardQuery('
			SELECT		item_id, position, site_id
			FROM		siteitems si
			INNER JOIN	items i 
			USING		(item_id)
			WHERE		si.site_id = '.$siteitem->site_id.'
			AND			si.position < '.$siteitem->position.'
			AND			i.type = '.$siteitem->getItem()->type.'
			ORDER BY	si.position DESC
			'
		);
	}
	
	function getNextSiteItem($siteitem) {
		return $this->doStandardQuery('
			SELECT		item_id, position, site_id
			FROM		siteitems si
			INNER JOIN	items i 
			USING		(item_id)
			WHERE		si.site_id = '.$siteitem->site_id.'
			AND			si.position > '.$siteitem->position.'
			AND			i.type = '.$siteitem->getItem()->type.'
			ORDER BY	si.position ASC
			LIMIT		1
			'
		);
	}
	
	function getNextSiteItems($siteitem) {
		return $this->doStandardQuery('
			SELECT		item_id, position, site_id
			FROM		siteitems si
			INNER JOIN	items i 
			USING		(item_id)
			WHERE		si.site_id = '.$siteitem->site_id.'
			AND			si.position > '.$siteitem->position.'
			AND			i.type = '.$siteitem->getItem()->type.'
			ORDER BY	si.position ASC
			'
		);
	}
	
	//slider functions
	public function actionSlidermoveleft() {
		$sliderid = (int)$_GET['id'];
		$position = (int)$_GET['id2'];
		
		$si1 = Sliderimages::model()->findByPk(array(
			'slider_id' => $sliderid,
			'position' => $position
		));
		
		$si2 = $si1->getSlider()->getPrevImage($si1);
		
		$si1->position = $si1->getSlider()->getNextPosition();
		$si1->save();		
		$si1->position = $si2->position;
		$si2->position = $position;
		$si2->save();
		$si1->save();
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionSlidermoveright() {
		$sliderid = (int)$_GET['id'];
		$position = (int)$_GET['id2'];
		
		$si1 = Sliderimages::model()->findByPk(array(
			'slider_id' => $sliderid,
			'position' => $position
		));
		
		$si2 = $si1->getSlider()->getNextImage($si1);
		
		$si1->position = $si1->getSlider()->getNextPosition();
		$si1->save();
		$si1->position = $si2->position;
		$si2->position = $position;
		$si2->save();
		$si1->save();
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionGetslidertext() {		
		$sliderid = (int)$_GET['id'];
		$position = (int)$_GET['id2'];
		
		$si = Sliderimages::model()->findByPk(array('slider_id' => $sliderid, 'position' => $position));
		
		echo json_encode(array($si->title, $si->text));
	}
	
	public function actionSlidertextedit() {
		$slider_id = $_POST['slider_id'];
		$position = $_POST['slider_position'];
		$title = $_POST['slider_title'];
		$text = $_POST['slider_text'];
		
		$si = Sliderimages::model()->findByPk(array(
			'slider_id' => $slider_id,
			'position' => $position
		));
		
		$si->title = $title;
		$si->text = $text;
		$si->save();
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionSliderimagecopy() {
		$sliderid = (int)$_GET['id'];
		$position = (int)$_GET['id2'];
		
		$si = Sliderimages::model()->findByPk(array('slider_id' => $sliderid, 'position' => $position));
		$si->copy();
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionSliderimagedelete() {
		$sliderid = (int)$_GET['id'];
		$position = (int)$_GET['id2'];
		
		$si = Sliderimages::model()->findByPk(array('slider_id' => $sliderid, 'position' => $position))->delete();
		
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}

	/**
	* @return array the dataset resulting from the query
	* passed on as parameter
	*/
	private function doStandardQuery($queryString) {
		return Yii::app()->db->createCommand($queryString)->query();
	}


// *** Start Itemtype Actions ***
	public function actionItemtypes() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->itemtype = Itemtypes::model()->findByPk($_GET['id']);
			
			if ($this->itemtype !== false) {
				$this->render('/admin/itemtype');
			} else {
				$this->render('/admin/itemtypes');
			}
		} else {
			$this->render('/admin/itemtypes');
		}
	}

	public function actionItemtypeadd() {
		
		if (isset($_POST) && isset($_POST['name'])) {
			$itemtype = new Itemtypes();
			$itemtype->name = $_POST['name'];
			$itemtype->save();
			$this->redirect(array('admin/itemtypeedit/'.$itemtype->itemtype_id));
		} else {
			$this->render('/admin/itemtypeadd');
		}
	}
	
	public function actionItemtypeedit() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->itemtype = Itemtypes::model()->findByPk($_GET['id']);
			
			if (is_object($this->itemtype)) {
				if (isset($_POST) && isset($_POST['name'])) {
					$this->itemtype->name = $_POST['name'];
					$this->itemtype->save();
					$this->redirect(array('admin/itemtypes'));
				} else {
					$this->render('/admin/itemtypeedit');
				}				
			} else {
				$this->redirect(array('admin/itemtypes'));
			}
		} else {
			$this->redirect(array('admin/itemtypes'));
		}
	}
	
	public function actionItemtypedel() {
		$id = (int)$_GET['id'];
		Itemtypes::model()->findByPk($id)->delete();
		$this->redirect(array('admin/itemtypes'));
	}
	
	
	public function actionItemtypetypesedit() {
		
		if (isset($_GET['id'])) {
			$this->itemtype = Itemtypes::model()->findByPk($_GET['id']);
			
			if (isset($_POST) && !empty($_POST)) {
				for ($i = 1; true; $i++) {
					if (isset($_POST['elementtype'.$i]) && isset($_POST['position'.$i]) && isset($_POST['name'.$i])) {
						
						if ($_POST['elementtype'.$i] == 'not') {
							$del = Itemtypeelementtypes::model()->deleteAll('position = ' . $_POST['position'.$i] . ' AND itemtype_id = ' . $this->itemtype->itemtype_id);
							continue;
						}
						
						$itet = Itemtypeelementtypes::model()->find('position = ' . $_POST['position'.$i] . ' AND itemtype_id = ' . $this->itemtype->itemtype_id);

						if (!is_object($itet)) $itet = new Itemtypeelementtypes();
						$itet->itemtype_id = $this->itemtype->itemtype_id;						
						$itet->name = $_POST['name'.$i];
						$itet->elementtype = $_POST['elementtype'.$i];
						$itet->position = $_POST['position'.$i];
						$itet->save();
					} else {
						break;
					}
				}
				$this->redirect(array('admin/itemtypes'));
			} else {
				$this->render('/admin/itemtypetypesedit');
			}			
		} else {
			$this->redirect(array('/admin/itemtypes'));
		}
	}

	
// *** Start Slider Actions ***
	public function actionSliders() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->slider = Sliders::model()->findByPk($_GET['id']);
			
			if ($this->slider !== false) {
				$this->render('/admin/slider');
			} else {
				$this->render('/admin/sliders');
			}
		} else {
			$this->render('/admin/sliders');
		}
	}

	public function actionSlideradd() {
		
		if (isset($_POST) && isset($_POST['name'])) {
			$slider = new Sliders();
			$slider->name = $_POST['name'];
			$slider->save();
			$this->redirect(array('admin/sliders'));
		} else {
			$this->render('/admin/slideradd');
		}
	}
	
	public function actionSlideredit() {
		
		if (isset($_GET) && isset($_GET['id'])) {
			$this->slider = Sliders::model()->findByPk($_GET['id']);
			
			if (is_object($this->slider)) {
				if (isset($_POST) && isset($_POST['name'])) {
					$this->slider->name = $_POST['name'];
					$this->slider->save();
					$this->redirect(array('admin/sliders'));
				} else {
					$this->render('/admin/slideredit');
				}				
			} else {
				$this->redirect(array('admin/sliders'));
			}
		} else {
			$this->redirect(array('admin/sliders'));
		}
	}
	
	public function actionSliderdel() {
		$id = (int)$_GET['id'];
		Sliders::model()->findByPk($id)->delete();
		$this->redirect(array('admin/sliders'));
	}
	
	
	
	
	public function actionSliderimageadd() {
		if (isset($_GET) && isset($_GET['id'])) {
			$this->slider = Sliders::model()->findByPk($_GET['id']);
			if ($this->slider) {
				if (isset($_POST) && isset($_POST['image_id'])) {
					$image = Bilder::model()->findByPk($_POST['image_id']);
					if ($image) {
						$si = new Sliderimages();
						$si->slider_id = $this->slider->slider_id;
						$si->position = $this->slider->getNextPosition();
						$si->image_id = $image->bild_id;
						$si->title = $_POST['title'];
						$si->text = $_POST['text'];
						$si->save();
						$this->redirect($this->createUrl('/admin/sliders/' . $this->slider->slider_id));
					} else {
						$this->render('/admin/sliders');
					}
				} else {
					$this->render('/admin/sliderimageadd');
				}
			} else {
				$this->render('/admin/sliders');
			}
		} else {
			$this->render('/admin/sliders');
		}
	}	
	
	public function actionEleedit() {
		$ele = Elements::model()->findByPk($_POST['eleedit_eleid']);
		
		self::getLanguage()->setText($ele->getElement()->text_id, $_POST['eleedit_textarea']);
				
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}

	public static function getLanguage() {
		if (isset($_SESSION['language']))
			self::$currentLanguage = Languages::model()->findByPk($_SESSION['language']);
		
		if (!self::$currentLanguage) {
			self::$currentLanguage = Languages::model()->findByPk(1);
			$_SESSION['language'] = self::$currentLanguage->language_id;
		}
		
		return self::$currentLanguage;
	}
	
	public function actionInlinetranslate() {
		
		if (isset($_GET['id'])) {
			setcookie('inlinetranslate', $_GET['id'], 0, '/');
			$_COOKIE['inlinetranslate'] = $_GET['id'];
		}
		
		$this->render('/admin/inlinetranslate');
	}
	
	public function actionSliderimgchange() {
		
		if (isset($_GET['id']) && isset($_GET['id2']) && isset($_GET['id3'])) {
			$si = Sliderimages::model()->findByPk(array('slider_id'=>$_GET['id'], 'position'=>$_GET['id2']));
			$si->image_id = (int)$_GET['id3'];
			$si->save();
		}
				
		$this->redirect(Yii::app()->request->getUrlReferrer());
	}
	
	public function actionGetimageusages() {
		$imgid = (int)preg_replace('/bild_/', '', $_POST['bild_id']);
		
		$eles = Elements::model()->findAll('foreign_id = '.$imgid.' AND type = "bilder"');
		
		$sis = Sliderimages::model()->findAll('image_id = '.$imgid);
		
		echo count($eles) + count($sis);
	}

// **********************************
	
	public function actionDeleteAktuelles() {
		Aktuell::model()->deleteByPk($_POST["aktuelles_id"]);
		echo "done";
	}

	public function actionPflegedienst() {
		$content = Content::model()->findAll(array('condition' => "seite = 'pflegedienst'"));
		$this->render('/admin/pflegedienst', array('content' => $content));
	}

	public function actionTagespflege() {
		$content = Content::model()->find(array('condition' => "seite = 'tagespflege'"));
		$this->render('/admin/tagespflege', array('content' => $content));
	}

	public function actionPflegeueberleitung() {
		$content = Content::model()->find(array('condition' => "seite = 'pflegeueberleitung'"));
		$this->render('/admin/pflegeueberleitung', array('content' => $content));
	}

	public function actionStellenangebote() {
		$content = Stellenangebote::model()->findAll();
		$this->render('/admin/stellenangebote', array('content' => $content));
	}

	public function actionKontakt() {
		$content = Adressen::model()->findAll();
		$this->render('/admin/kontakt', array('content' => $content));
	}

	public function actionImpressum() {
		$content = Content::model()->find(array('condition' => "seite = 'impressum'"));
		$this->render('/admin/impressum', array('content' => $content));
	}

	public function actionPDFUpload() {
		if (isset($_FILES['file']['tmp_name'])) {
			$save_dir = Yii::getPathOfAlias('webroot') . '/pdfs/';
			move_uploaded_file($_FILES['file']['tmp_name'], $save_dir . $_POST['datei']);

			$this->render('/admin/pdfupload', array('set' => "ja"));
		}
		//move_uploaded_file($_FILES['img']['tmp_name'][$key], $save_dir . $new_pic->bild_id . ".jpg");
		else
			$this->render('/admin/pdfupload');
	}

	public function actionBilder() {
		$bilder = Bilder::model()->findAll(array('condition' => 'bild_id != 0', 'order' => 'kategorie DESC'));
		$this->render('/admin/bilder', array('bilder' => $bilder));
	}

	public function actionDeleteBild() {
		$bildid = substr($_POST["bild_id"], 5);		
		$eles = Elements::model()->findAll('foreign_id = '.$bildid.' AND type="bilder"');		
		foreach ($eles AS $ele) {
			$ele->foreign_id = 0;
			$ele->save();
		}		
		Bilder::model()->deleteByPk($bildid); // bild_ID
		@unlink(Yii::getPathOfAlias('webroot') . '/img/site/content/' . substr($_POST["bild_id"], 5) . ".jpg");
		echo "done";
	}
	public function actionDeleteGalerieBild() {
		$vars = explode("-",$_POST["bild_id"]);
		Galeriebilder::model()->deleteAll( array('condition' => "galerie_id = ".$vars[0]." AND bilder_id = ".$vars[1]) ); // bild_ID
		//echo "done";
		//echo $vars[0];
		//echo $vars[1];
	}
	public function actionDeleteGalerie() {
		Galerie::model()->deleteAll( array('condition' => "galerie_id = ".$_POST["galerie_id"]) ); // bild_ID
		Galeriebilder::model()->deleteAll( array('condition' => "galerie_id = ".$_POST["galerie_id"]) ); // bild_ID
		echo "done";
		//echo $vars[0];
		//echo $vars[1];
	}	

	public function actionSwitchBildKategorie() {
		$pic = Bilder::model()->findbyPK(substr($_POST["bild_id"], 12)); // bild_switch_ID
		$new_cat = ($pic->kategorie == "bild") ? "slider" : "bild";
		Bilder::model()->updateByPk(substr($_POST["bild_id"], 12), array('kategorie' => $new_cat));
		echo $new_cat;
	}

	public function actionGalerien() {
		$content = Galerie::model()->findAll(array('order' => 'datum desc'));
		
		$content_bilder = array();
		foreach ($content as $bilderausgalerien){
			$content_bilder[$bilderausgalerien->galerie_id] = Galeriebilder::model()->findAll(array('condition' => "galerie_id = ".$bilderausgalerien->galerie_id, 'order' => 'bilder_id'));
		}
		if (isset($_POST["new_item"])) {

			if (!empty($_FILES['img']['tmp_name'])) {
				$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';
				$new_pic = new Bilder;
				$new_pic->kategorie = 'bild';
				$new_pic->save();

				$resize = new resize($_FILES['img']['tmp_name']);
				$resize->resizeImage(1280, 1280, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);

				//move_uploaded_file($_FILES['img']['tmp_name'], $save_dir . $new_pic->bild_id . ".jpg");
			}

			$new_gal = new Galerie;
			$new_gal->seite = $_POST["seite"];
			$new_gal->titel = $_POST["titel"];
			$new_gal->datum = date("Y-m-d", strtotime($_POST["datum"]));
			$new_gal->bild_id = (!empty($_FILES['img']['tmp_name'])) ? $new_pic->bild_id : 0;
			$new_gal->text = $_POST["text"];
			$new_gal->save();

			$content = Galerie::model()->findAll(array('order' => 'datum desc'));
			$content_bilder = array();
			foreach ($content as $bilderausgalerien){
				$content_bilder[$bilderausgalerien->galerie_id] = Galeriebilder::model()->findAll(array('condition' => "galerie_id = ".$bilderausgalerien->galerie_id, 'order' => 'bilder_id'));
			}
			$this->render('/admin/galerien', array('content' => $content,'content_bilder' => $content_bilder, 'new_saved' => true));
			exit();
		}

		// galerie wird geändert
		if (isset($_POST["update"])) {
			if (!empty($_FILES['img']['tmp_name'])) {
				$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';
				$new_pic = new Bilder;
				$new_pic->kategorie = 'bild';
				$new_pic->save();

				$resize = new resize($_FILES['img']['tmp_name']);
				$resize->resizeImage(1280, 1280, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);

				//move_uploaded_file($_FILES['img']['tmp_name'], $save_dir . $new_pic->bild_id . ".jpg");
				Galerie::model()->updateByPk($_POST["id"], array('bild_id' => $new_pic->bild_id));
			}

			Galerie::model()->updateByPk($_POST["id"], array('seite' => $_POST["seite"],
				'titel' => $_POST["titel"],
				'text' => $_POST["text"],
				'datum' => date("Y-m-d", strtotime($_POST["datum"])),
			));

			// falls bestehendes titelbild ausgewählt wurde´, um es zu ändern
			if (strlen($_POST["title_pic_from_pool_" . $_POST["id"]]) > 4)
				Galerie::model()->updateByPk($_POST["id"], array('bild_id' => substr($_POST["title_pic_from_pool_" . $_POST["id"]], 5)));

			// bilder sollen zur galerie hinzugefügt werden
			$new_pics = array_unique(explode(" ", $_POST["selected_pics_" . $_POST["id"]]));
			foreach ($new_pics as $key => $value) {
				$gal_pic = new Galeriebilder();
				$gal_pic->galerie_id = $_POST["id"];
				$gal_pic->bilder_id = substr($value, 5); // ab bild_
				$gal_pic->save();
			}


			$content = Galerie::model()->findAll(array('order' => 'datum desc'));
			$content_bilder = array();
			foreach ($content as $bilderausgalerien){
				$content_bilder[$bilderausgalerien->galerie_id] = Galeriebilder::model()->findAll(array('condition' => "galerie_id = ".$bilderausgalerien->galerie_id, 'order' => 'bilder_id'));
			}
			$this->render('/admin/galerien', array('content' => $content,'content_bilder' => $content_bilder, 'updated' => true));
			exit();
		}


		$this->render('/admin/galerien', array('content' => $content,'content_bilder' => $content_bilder));
	}

	public function actionGetBilder() {
		echo CJSON::encode(Bilder::model()->findAll());
	}

	public function actionBilderUpload() {
		$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';

		foreach ($_FILES["img"]["name"] as $key => $value) {

			$new_pic = new Bilder;
			$new_pic->kategorie = $_POST["kategorie"];
			$new_pic->save();
			
			if($new_pic->kategorie == 'bild') {
				$resize = new resize($_FILES['img']['tmp_name'][$key]);
				$resize->resizeImage(1280, 1280, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);
			} else {
				$resize = new resize($_FILES['img']['tmp_name'][$key]);
				$resize->resizeImage(1920, 1920, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);
			}
						
			$resize_small = new resize($_FILES['img']['tmp_name'][$key]);
			$resize_small->resizeImage(250, 250, 'auto');
			$resize_small->saveImage($save_dir . $new_pic->bild_id . "_small.jpg", 80);
			
			/*$new_pic = new Bilder;
			//$pic_resize = new resize;
			$new_pic->kategorie = $_POST["kategorie"];
			$new_pic->save();
			move_uploaded_file($_FILES['img']['tmp_name'][$key], $save_dir . $new_pic->bild_id . ".jpg");*/
		}

		echo count($_FILES["img"]["name"]) . " Bilder erfolgreich hochgeladen";
	}

	public function actionSlider() {
		$content = Slider::model()->findAll(array('order' => 'seite, position'));

		// bei neuem eintrag
		if (isset($_POST["new_item"])) {

			if (!empty($_FILES['img']['tmp_name'])) {
				$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';
				$new_pic = new Bilder;
				$new_pic->kategorie = 'slider';
				$new_pic->save();

				$resize = new resize($_FILES['img']['tmp_name']);
				$resize->resizeImage(1920, 1920, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);
				
				//move_uploaded_file($_FILES['img']['tmp_name'], $save_dir . $new_pic->bild_id . ".jpg");
			}

			$new_slider = new Slider;
			$new_slider->position = $_POST["position"];
			$new_slider->seite = $_POST["seite"];
			$new_slider->bild_id = (!empty($_FILES['img']['tmp_name'])) ? $new_pic->bild_id : 0;
			$new_slider->titel = $_POST["titel"];
			$new_slider->text = $_POST["text"];
			$new_slider->link = ($_POST["seite"] == '0') ? $_POST["link"] : null;
			$new_slider->target = ($_POST["seite"] == '0') ? "_blank" : "_self";
			$new_slider->save();

			$content = Slider::model()->findAll(array('order' => 'seite, position'));
			$this->render('/admin/slider', array('content' => $content, 'new_saved' => true));
			exit();
		}

		// slider wird geändert
		if (isset($_POST["update"])) {
			if (!empty($_FILES['img']['tmp_name'])) {
				$save_dir = Yii::getPathOfAlias('webroot') . '/img/site/content/';
				$new_pic = new Bilder;
				$new_pic->kategorie = 'bild';
				$new_pic->save();
				
				$resize = new resize($_FILES['img']['tmp_name']);
				$resize->resizeImage(1920, 1920, 'auto');
				$resize->saveImage($save_dir . $new_pic->bild_id . ".jpg", 80);
				

				//move_uploaded_file($_FILES['img']['tmp_name'], $save_dir . $new_pic->bild_id . ".jpg");
				Slider::model()->updateByPk($_POST["id"], array('bild_id' => $new_pic->bild_id));
			}

			Slider::model()->updateByPk($_POST["id"], array('position' => $_POST["position"],
				'seite' => $_POST["seite"],
				'titel' => $_POST["titel"],
				'text' => $_POST["text"],
				'link' => ($_POST["seite"] == '0') ? $_POST["link"] : null,
				'target' => ($_POST["seite"] == '0') ? "_blank" : "_self",
			));

			// falls bestehendes titelbild ausgewählt wurde, um es zu ändern
			if (strlen($_POST["title_pic_from_pool_" . $_POST["id"]]) > 4)
				Slider::model()->updateByPk($_POST["id"], array('bild_id' => substr($_POST["title_pic_from_pool_" . $_POST["id"]], 5)));


			$content = Slider::model()->findAll(array('order' => 'seite, position'));
			$this->render('/admin/slider', array('content' => $content, 'updated' => true));
			exit();
		}

		$this->render('/admin/slider', array('content' => $content));
	}

	public function actionDeleteSlider() {
		Slider::model()->deleteByPk($_POST["slider_id"]);
		echo "done";
	}

	public function actionUpdateContent() {
		Content::model()->updateByPk($_POST["content_id"], array('titel' => $_POST["titel"], 'text' => $_POST["text"]));
		// Yii::log($_POST["text"], "error",  "d");
		echo "done";
	}

	public function actionUpdateStellenangebot() {
		Stellenangebote::model()->updateByPk($_POST["stellenangebot_id"], array('titel' => $_POST["titel"], 'unterzeile' => $_POST["unterzeile"], 'text' => $_POST["text"]));
		echo "done";
	}

	public function actionDeleteStellenangebot() {
		Stellenangebote::model()->deleteByPk($_POST["stellenangebot_id"]);
		echo "done";
	}

	public function actionNeuesStellenangebot() {
		$neues = new Stellenangebote();
		$neues->titel = $_POST["titel"];
		$neues->seite = "stellenangebote";
		$neues->unterzeile = $_POST["unterzeile"];
		$neues->text = $_POST["text"];
		$neues->save();
		//print_r($neues->getErrors());
		echo "done";
	}

	public function actionUpdateAdresse() {
		Adressen::model()->updateByPk($_POST["adressen_id"], array('name' => $_POST["name"],
			'strasse' => $_POST["strasse"],
			'hausnummer' => $_POST["hausnummer"],
			'plz' => $_POST["plz"],
			'ort' => $_POST["ort"],
			'land' => $_POST["land"],
			'telefon' => $_POST["telefon"],
			'telefax' => $_POST["telefax"],
			'email' => $_POST["email"],
			'link' => $_POST["link"],
			'oeffnungszeiten' => $_POST["oeffnungszeiten"]));

		echo "done";
	}

	/**
	 *  Login Seite anzeigen
	 */
	public function actionLogin() {
		
		$model = new LoginForm;

		if (isset($_POST['LoginForm'])) {
			$model->attributes = $_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if ($model->validate())
				$this->redirect($this->createUrl("/admin"));
		}
		// display the login form
		$this->render('/admin/login', array('model' => $model));
	}

	/**
	 * Admin ausloggen
	 */
	public function actionLogout() {
		Yii::app()->user->logout();
		$this->redirect($this->createUrl('/admin/login'));
	}

	##########################
	## Innstadt Altlasten ####
	##########################

	public function actionCategories() {
		$categories = BeitragKategorie::model()->getAllCategories();
		$this->render('/admin/show_categories', array('categories' => $categories));
	}

	public function actionEditCategorie() {
		$category = BeitragKategorie::model()->findByPk(Yii::app()->getRequest()->getQuery('id'));

		if (isset($_POST['BeitragKategorie'])) {
			$category->attributes = $_POST['BeitragKategorie'];
			$category->default_image_left = CUploadedFile::getInstance($category, 'default_image_left');
			$category->default_image_right = CUploadedFile::getInstance($category, 'default_image_right');

			if ($category->validate()) {
				$category->updateModel($category);
				if (isset($category->default_image_left))
					$category->default_image_left->saveAs(Constants::PATH_ARTICLE_IMAGES . "default_" . $category->id . "_left.png");
				if (isset($category->default_image_right))
					$category->default_image_right->saveAs(Constants::PATH_ARTICLE_IMAGES . "default_" . $category->id . "_right.png");

				$this->redirect($this->createUrl('/admin/editcategorie/' . $category->id));
			}
		}
		$this->render('/admin/edit_category', array('category' => $category));
	}

	public function actionNewCategory() {
		$category = new BeitragKategorie();

		if (isset($_POST['BeitragKategorie'])) {
			$category->attributes = $_POST['BeitragKategorie'];
			$category->default_image_left = CUploadedFile::getInstance($category, 'default_image_left');
			$category->default_image_right = CUploadedFile::getInstance($category, 'default_image_right');

			if ($category->validate()) {
				$new_category = $category->createModel($category);
				if (isset($category->default_image_left))
					$category->default_image_left->saveAs(Constants::PATH_ARTICLE_IMAGES . "default_" . $new_category->id . "_left.png");
				if (isset($category->default_image_right))
					$category->default_image_right->saveAs(Constants::PATH_ARTICLE_IMAGES . "default_" . $new_category->id . "_right.png");

				$this->redirect($this->createUrl('/admin/categories/'));
			}
		}
		$this->render('/admin/new_category', array('category' => $category));
	}

	public function actionArticles() {
		$articles = Beitrag::model()->getAllArticles();
		$this->render('/admin/show_articles', array('articles' => $articles));
	}

	public function actionEditArticle() {
		$model = Beitrag::model()->findByPk(Yii::app()->getRequest()->getQuery('id'));
		$categories = BeitragKategorie::model()->getAllCategories();

		if (isset($_POST['Beitrag'])) {
			$model->attributes = $_POST['Beitrag'];
			$model->special_image_left = CUploadedFile::getInstance($model, 'special_image_left');
			$model->special_image_right = CUploadedFile::getInstance($model, 'special_image_right');

			if ($model->validate()) {
				if (isset($model->special_image_left)) {
					$model->special_image_left->saveAs(Constants::PATH_ARTICLE_IMAGES . $model->id . "_left.png");
					$model->has_special_image = 1;
				}
				if (isset($model->special_image_right)) {
					$model->special_image_right->saveAs(Constants::PATH_ARTICLE_IMAGES . $model->id . "_right.png");
					$model->has_special_image = 1;
				}

				$model->updateModel($model);
				$this->redirect($this->createUrl('/admin/editarticle/' . $model->id));
			}
		}
		$this->render('/admin/edit_article', array('model' => $model, 'categories' => $categories));
	}

	public function actionNewArticle() {
		$model = new Beitrag;
		$categories = BeitragKategorie::model()->getAllCategories();

		if (isset($_POST['Beitrag'])) {
			$model->attributes = $_POST['Beitrag'];
			$model->special_image_left = CUploadedFile::getInstance($model, 'special_image_left');
			$model->special_image_right = CUploadedFile::getInstance($model, 'special_image_right');

			if ($model->validate()) {
				if (isset($model->special_image_left)) {
					$model->special_image_left->saveAs(Constants::PATH_ARTICLE_IMAGES . $model->id . "_left.png");
					$model->has_special_image = 1;
				}
				if (isset($model->special_image_right)) {
					$model->special_image_right->saveAs(Constants::PATH_ARTICLE_IMAGES . $model->id . "_right.png");
					$model->has_special_image = 1;
				}

				$model->createModel($model);
				$this->redirect($this->createUrl('/admin/articles/'));
			}
		}
		$this->render('/admin/new_article', array('model' => $model, 'categories' => $categories));
	}

	public function actionTeam() {
		$team = Mitarbeiter::model()->findAll();
		$this->render('/admin/show_team', array('team' => $team));
	}

	public function actionEditTeamMember() {
		$model = Mitarbeiter::model()->findByPk(Yii::app()->getRequest()->getQuery('id'));

		if (isset($_POST['Mitarbeiter'])) {
			$model->attributes = $_POST['Mitarbeiter'];
			$model->picture = CUploadedFile::getInstance($model, 'picture');

			if ($model->validate()) {
				if (isset($model->picture))
					$model->picture->saveAs(Constants::PATH_TEAM_IMAGES . $model->id . ".png");

				$model->updateModel($model);
				$this->redirect($this->createUrl('/admin/editteammember/' . $model->id));
			}
		}
		$this->render('/admin/edit_teammember', array('model' => $model));
	}

	public function actionNewTeamMember() {
		$model = new Mitarbeiter;

		if (isset($_POST['Mitarbeiter'])) {
			$model->attributes = $_POST['Mitarbeiter'];
			$model->picture = CUploadedFile::getInstance($model, 'picture');

			if ($model->validate()) {
				$new_team_member = $model->createModel($model);

				if (isset($model->picture))
					$model->picture->saveAs(Constants::PATH_TEAM_IMAGES . $new_team_member->id . ".png");

				$this->redirect($this->createUrl('/admin/team/' . $model->id));
			}
		}
		$this->render('/admin/new_teammember', array('model' => $model));
	}

	public function actionClients() {
		$clients = Kunde::model()->findAll(array('order' => 'name'));
		$this->render('/admin/show_clients', array('clients' => $clients));
	}

	public function actionEditClient() {
		$model = Kunde::model()->findByPk(Yii::app()->getRequest()->getQuery('id'));

		if (isset($_POST['Kunde'])) {
			$model->attributes = $_POST['Kunde'];
			$model->picture = CUploadedFile::getInstance($model, 'picture');

			if ($model->validate()) {
				if (isset($model->picture))
					$model->picture->saveAs(Constants::PATH_CLIENTS_IMAGES . $model->id . ".png");

				$model->updateModel($model);
				$this->redirect($this->createUrl('/admin/editclient/' . $model->id));
			}
		}
		$this->render('/admin/edit_client', array('model' => $model));
	}

	public function actionNewClient() {
		$model = new Kunde();

		if (isset($_POST['Kunde'])) {
			$model->attributes = $_POST['Kunde'];
			$model->picture = CUploadedFile::getInstance($model, 'picture');

			if ($model->validate()) {
				$new_kunde = $model->createModel($model);

				if (isset($model->picture))
					$model->picture->saveAs(Constants::PATH_CLIENTS_IMAGES . $new_kunde->id . ".png");

				$this->redirect($this->createUrl('/admin/clients/'));
			}
		}
		$this->render('/admin/new_client', array('model' => $model));
	}

	public function actionJobs() {
		$jobs = Job::model()->findAll();
		$this->render('/admin/show_jobs', array('jobs' => $jobs));
	}

	public function actionNewJob() {
		$model = new Job('new');
		if (isset($_POST['Job'])) {
			$model->attributes = $_POST['Job'];
			if ($model->validate()) {
				$model->createModel($model);
				$this->redirect($this->createUrl('/admin/jobs'));
			}
		}
		$this->render('/admin/new_job', array('model' => $model));
	}

	public function actionEditJob() {
		$model = Job::model()->findByPk(Yii::app()->getRequest()->getQuery('id'));
		if (isset($_POST['Job'])) {
			$model->attributes = $_POST['Job'];
			if ($model->validate()) {
				$model->updateModel($model);
				$this->redirect($this->createUrl('/admin/editjob/' . $model->id));
			}
		}
		$this->render('/admin/edit_job', array('model' => $model));
	}
	
	public function actionbackupsave() {
		$this->render('/admin/backupsave', array());
	}
	
	public function actionbackupload() {
		
		$files = scandir(Yii::app()->getBasePath().'/backups/');
		
		unset($files[0]); unset($files[1]);
		
		$this->render('/admin/backupload', array('files'=>$files));
	}
	
	public function actionbackupsaving() {
		
		ini_set('date.timezone', 'Europe/Berlin');
		
		$path = Yii::app()->getBasePath().'/backups/';
		$dump = $this->getDatabaseDump($path.'db-backup-'.date('Y-m-d_H-i-s').'.sql');
		$this->redirect(Yii::app()->request->urlReferrer);
	}
	
	public function actionbackuploading() {
		
		$id = $_GET['file'];
		
		$path = Yii::app()->getBasePath().'/backups/';
		
		$sql = file_get_contents($path.$id);
		
		$parts = preg_split('/;\n/', $sql);
		
		foreach ($parts AS $part) {
			if (trim($part) != '')
				Yii::app()->db->createCommand($part)->execute();
		}
		
		$this->redirect(Yii::app()->request->urlReferrer);
	}
	
	protected function getDatabaseDump($filepath, $tables = '*')	{
		if ($tables == '*') {
			$tables = array();
			$tables = Yii::app()->db->schema->getTableNames();
		} else {
			$tables = is_array($tables) ? $tables : explode(',', $tables);
		}
		$return = '';

		foreach ($tables as $table) {
			$result = Yii::app()->db->createCommand('SELECT * FROM ' . $table)->query();
			$return.= 'DROP TABLE IF EXISTS ' . $table . ';';
			$row2 = Yii::app()->db->createCommand('SHOW CREATE TABLE ' . $table)->queryRow();
			$return.= "\n\n" . $row2['Create Table'] . ";\n\n";
			foreach ($result as $row) {
				$return.= 'INSERT INTO ' . $table . ' VALUES(';
				foreach ($row as $data) {
					$data = addslashes($data);

					// Updated to preg_replace to suit PHP5.3 +
					$data = preg_replace("/\n/", "\\n", $data);
					if (isset($data)) {
						$return.= '"' . $data . '"';
					} else {
						$return.= '""';
					}
					$return.= ',';
				}
				$return = substr($return, 0, strlen($return) - 1);
				$return.= ");\n";
			}
			$return.="\n\n\n";
		}
		//save file
		$handle = fopen($filepath, 'w+');
		fwrite($handle, $return);
		fclose($handle);
	}

}
