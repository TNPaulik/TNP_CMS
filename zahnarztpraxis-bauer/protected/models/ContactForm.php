<?php

class ContactForm extends CFormModel {

    public $target;
    public $name;
    public $email;
    public $phone;
    public $message;
    public $verifyCode;

    public function rules() {
        return array(
            array('name, email, message', 'required', 'message' => '{attribute} bitte ausfüllen'),
            array('email', 'email', 'checkMX' => true, 'message' => 'Bitte gültige E-Mail Adresse eingeben'),
            array('name, email, phone, message', 'safe'),
                //array('verifyCode', 'captcha', 'allowEmpty' => !CCaptcha::checkRequirements()),
        );
    }

    public function attributeLabels() {
        return array(
            'name' => 'Name',
            'email' => 'E-Mail Adresse',
            'phone' => 'Telefonnummer',
            'message' => 'Nachricht',
            'verifyCode' => 'Anti Spam Code',
        );
    }
	
	public function validate($attributes = null, $clearErrors = true) {
		return true;
		parent::validate($attributes, $clearErrors);
	}

}
