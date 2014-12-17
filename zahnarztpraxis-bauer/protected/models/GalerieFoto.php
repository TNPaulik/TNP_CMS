<?php

/**
 * This is the model class for table "galeriefoto".
 *
 * The followings are the available columns in table 'galeriefoto':
 * @property integer $Galerie_ID
 * @property integer $Foto_ID
 */
class GalerieFoto extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Galeriefoto the static model class
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
		return 'galeriefoto';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('Galerie_ID, Foto_ID', 'required'),
			array('Galerie_ID, Foto_ID', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('Galerie_ID, Foto_ID', 'safe', 'on'=>'search'),
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
			'Galerie_ID' => 'Galerie',
			'Foto_ID' => 'Foto',
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

		$criteria->compare('Galerie_ID',$this->Galerie_ID);
		$criteria->compare('Foto_ID',$this->Foto_ID);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}