<?php

/**
 * This is the model class for table "adressen".
 *
 * The followings are the available columns in table 'adressen':
 * @property integer $adressen_id
 * @property string $name
 * @property string $strasse
 * @property string $hausnummer
 * @property integer $plz
 * @property string $ort
 * @property string $land
 * @property string $telefon
 * @property string $telefax
 * @property string $email
 * @property string $link
 */
class Adressen extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Adressen the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'adressen';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, strasse, hausnummer, plz, ort, land, telefon, telefax, email, link', 'required'),
			array('plz', 'numerical', 'integerOnly'=>true),
			array('name, strasse, ort, land, telefon, telefax, email, link', 'length', 'max'=>255),
			array('hausnummer', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('adressen_id, name, strasse, hausnummer, plz, ort, land, telefon, telefax, email, link', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'adressen_id' => 'Adressen',
			'name' => 'Name',
			'strasse' => 'Strasse',
			'hausnummer' => 'Hausnummer',
			'plz' => 'Plz',
			'ort' => 'Ort',
			'land' => 'Land',
			'telefon' => 'Telefon',
			'telefax' => 'Telefax',
			'email' => 'Email',
			'link' => 'Link',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('adressen_id',$this->adressen_id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('strasse',$this->strasse,true);
		$criteria->compare('hausnummer',$this->hausnummer,true);
		$criteria->compare('plz',$this->plz);
		$criteria->compare('ort',$this->ort,true);
		$criteria->compare('land',$this->land,true);
		$criteria->compare('telefon',$this->telefon,true);
		$criteria->compare('telefax',$this->telefax,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('link',$this->link,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}