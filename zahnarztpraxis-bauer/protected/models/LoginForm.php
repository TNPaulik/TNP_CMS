<?php

/**
 * LoginForm class.
 * LoginForm is the data structure for keeping
 * user login form data. It is used by the 'login' action of 'SiteController'.
 */
class LoginForm extends CFormModel {

	public $email;
	public $password;
	public $rememberMe;
	private $_identity;

	/**
	 * Declares the validation rules.
	 * The rules state that username and password are required,
	 * and password needs to be authenticated.
	 */
	public function rules() {
		return array(
			// username and password are required
			array('email, password', 'required', 'message' => 'Bitte ausfüllen'),
			array('password', 'authenticate'),
		);
	}

	/**
	 * Declares attribute labels.
	 */
	public function attributeLabels() {
		return array(
			'rememberMe' => 'Remember me next time',
			'email' => 'User',
			'password' => 'Password',
		);
	}

	/**
	 * Authenticates the password.
	 * This is the 'authenticate' validator as declared in rules().
	 */
	public function authenticate($attribute, $params) {
		if (!$this->hasErrors()) {
			$this->_identity = new UserIdentity($this->email, $this->password);
			$this->_identity->authenticate();
			if ($this->_identity->errorCode === UserIdentity::ERROR_NONE) {
				//$duration = $this->rememberMe ? 3600 * 24 * 30 : 0; // 30 days
				$duration = 3600 * 24 * 30; // 30 days
				Yii::app()->user->login($this->_identity, $duration);
			} else {
				$this->addError('loginError', $this->_identity->errorCode);
			}
		}
	}

}
