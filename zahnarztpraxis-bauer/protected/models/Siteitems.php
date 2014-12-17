<?php

/**
 * This is the model class for table "siteitems".
 *
 * The followings are the available columns in table 'siteitems':
 * @property string $site_id
 * @property string $item_id
 * @property integer $position
 */
class Siteitems extends CActiveRecord
{
	protected $maxpos;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Siteitems the static model class
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
		return 'siteitems';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('site_id, item_id, position', 'required'),
			array('position', 'numerical', 'integerOnly'=>true),
			array('site_id, item_id', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('site_id, item_id, position', 'safe', 'on'=>'search'),
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
			'item_id' => 'Item',
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
		$criteria->compare('item_id',$this->item_id,true);
		$criteria->compare('position',$this->position);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public static function getNextPosition($site_id) {
		$criteria=new CDbCriteria;
		$criteria->select = 'max(position) AS maxpos';
		$criteria->condition = 'site_id='.$site_id;
		$row = self::model()->find($criteria);
		return $row['maxpos']+1;
	}
	
	public function getItem() {
		return Items::model()->findByPk($this->item_id);
	}
}