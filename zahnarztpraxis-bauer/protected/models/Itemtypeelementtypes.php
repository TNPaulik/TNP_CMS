<?php

/**
 * This is the model class for table "itemtypeelementtypes".
 *
 * The followings are the available columns in table 'itemtypeelementtypes':
 * @property integer $itemtype_id
 * @property string $elementtype
 * @property string $position
 * @property string $name
 */
class Itemtypeelementtypes extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Itemtypeelementtypes the static model class
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
		return 'itemtypeelementtypes';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('itemtype_id, elementtype, position, name', 'required'),
			array('itemtype_id', 'numerical', 'integerOnly'=>true),
			array('elementtype, name', 'length', 'max'=>255),
			array('position', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('itemtype_id, elementtype, position, name', 'safe', 'on'=>'search'),
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
			'itemtype_id' => 'Itemtype',
			'elementtype' => 'Elementtype',
			'position' => 'Position',
			'name' => 'Name',
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

		$criteria->compare('itemtype_id',$this->itemtype_id);
		$criteria->compare('elementtype',$this->elementtype,true);
		$criteria->compare('position',$this->position,true);
		$criteria->compare('name',$this->name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public function primaryKey()
	{
		return array('itemtype_id', 'position');
	}
}