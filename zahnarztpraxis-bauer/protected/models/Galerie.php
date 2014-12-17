<?php

/**
 * This is the model class for table "galerie".
 *
 * The followings are the available columns in table 'galerie':
 * @property integer $galerie_id
 * @property string $seite
 * @property string $titel
 * @property string $datum
 * @property string $text
 * @property integer $bild_id
 */
class Galerie extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Galerie the static model class
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
		return 'galerie';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('seite, titel, datum, text, bild_id', 'required'),
			array('bild_id', 'numerical', 'integerOnly'=>true),
			array('seite, titel', 'length', 'max'=>255),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('galerie_id, seite, titel, datum, text, bild_id', 'safe', 'on'=>'search'),
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
                     'galerie_bilder' => array(self::HAS_MANY, 'Galeriebilder', 'galerie_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'galerie_id' => 'Galerie',
			'seite' => 'Seite',
			'titel' => 'Titel',
			'datum' => 'Datum',
			'text' => 'Text',
			'bild_id' => 'Bild',
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

		$criteria->compare('galerie_id',$this->galerie_id);
		$criteria->compare('seite',$this->seite,true);
		$criteria->compare('titel',$this->titel,true);
		$criteria->compare('datum',$this->datum,true);
		$criteria->compare('text',$this->text,true);
		$criteria->compare('bild_id',$this->bild_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}