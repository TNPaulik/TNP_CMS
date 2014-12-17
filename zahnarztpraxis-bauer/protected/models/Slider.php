<?php

/**
 * This is the model class for table "slider".
 *
 * The followings are the available columns in table 'slider':
 * @property integer $slider_id
 * @property integer $position
 * @property string $seite
 * @property integer $bild_id
 * @property string $titel
 * @property string $text
 * @property string $link
 * @property string $target
 */
class Slider extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Slider the static model class
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
		return 'slider';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('position, seite, bild_id, titel, text', 'required'),
			array('position, bild_id', 'numerical', 'integerOnly'=>true),
			array('seite, titel, text', 'length', 'max'=>255),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('slider_id, position, seite, bild_id, titel, text, link, target', 'safe',),
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
			'slider_id' => 'Slider',
			'position' => 'Position',
			'seite' => 'Seite',
			'bild_id' => 'Bild',
			'titel' => 'Titel',
			'text' => 'Text',
			'link' => 'Link',
			'target' => 'Target',
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

		$criteria->compare('slider_id',$this->slider_id);
		$criteria->compare('position',$this->position);
		$criteria->compare('seite',$this->seite,true);
		$criteria->compare('bild_id',$this->bild_id);
		$criteria->compare('titel',$this->titel,true);
		$criteria->compare('text',$this->text,true);
		$criteria->compare('link',$this->link,true);
		$criteria->compare('target',$this->target,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}