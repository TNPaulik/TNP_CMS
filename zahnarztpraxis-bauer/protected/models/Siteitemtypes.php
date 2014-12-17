<?php

/**
 * This is the model class for table "siteitemtypes".
 *
 * The followings are the available columns in table 'siteitemtypes':
 * @property string $site_id
 * @property string $itemtype_id
 * @property integer $position
 */
class Siteitemtypes extends CActiveRecord
{
	protected $maxpos;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Siteitemtypes the static model class
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
		return 'siteitemtypes';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('site_id, itemtype_id, position', 'required'),
			array('position', 'numerical', 'integerOnly'=>true),
			array('site_id, itemtype_id', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('site_id, itemtype_id, position', 'safe', 'on'=>'search'),
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
			'site_id' => 'Site',
			'itemtype_id' => 'Itemtype',
			'position' => 'Position',
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

		$criteria->compare('site_id',$this->site_id,true);
		$criteria->compare('itemtype_id',$this->itemtype_id,true);
		$criteria->compare('position',$this->position);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public function getNextPosition($site_id) {
		$criteria=new CDbCriteria;
		$criteria->select = 'max(position) AS maxpos';
		$criteria->condition = 'site_id='.$site_id;
		$row = self::model()->find($criteria);
		return $row['maxpos']+1;
	}
}