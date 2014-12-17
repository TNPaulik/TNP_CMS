<?php

/**
 * This is the model class for table "sliders".
 *
 * The followings are the available columns in table 'sliders':
 * @property string $slider_id
 * @property string $name
 */
class Sliders extends CActiveRecord
{

	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Sliders the static model class
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
		return 'sliders';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name', 'required'),
			array('name', 'length', 'max'=>255),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('slider_id, name', 'safe', 'on'=>'search'),
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

		$criteria->compare('slider_id',$this->slider_id,true);
		$criteria->compare('name',$this->name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	protected function afterDelete() {
		$sis = Sliderimages::model()->findAll('slider_id = '.$this->slider_id);
		foreach ($sis AS $si) {
			$si->delete();
		}
		return parent::afterDelete();
	}
	
	public function getImages() {
		return Sliderimages::model()->findAll(array(
			'condition' => 'slider_id = '.$this->slider_id,
			'order' => 'position ASC'
		));
	}
	
	public function getNextPosition() {
		$criteria=new CDbCriteria;
		$criteria->select = 'max(position) AS maxpos';
		$criteria->condition = 'slider_id='.$this->slider_id;
		$row = Sliderimages::model()->find($criteria);
		return $row['maxpos']+1;
	}
	
	public function getPrevImage(Sliderimages $si) {
		$si2 = Sliderimages::model()->find(array(
			'condition' => 'slider_id = '.$this->slider_id.' AND position < '.$si->position,
			'order' => 'position DESC'
		));
		
		if (!$si2) {
			$si2 = Sliderimages::model()->find(array(
				'condition' => 'slider_id = '.$this->slider_id,
				'order' => 'position DESC'
			));
		}
		
		return $si2;
	}
	
	public function getNextImage(Sliderimages $si) {
		$si2 = Sliderimages::model()->find(array(
			'condition' => 'slider_id = '.$this->slider_id.' AND position > '.$si->position,
			'order' => 'position ASC'
		));
		
		if (!$si2) {
			$si2 = Sliderimages::model()->find(array(
				'condition' => 'slider_id = '.$this->slider_id,
				'order' => 'position ASC'
			));
		}
		
		return $si2;
	}
	
	public static function getBlank() {
		$s = new Sliders();
		$s->name = 'generated';
		$s->save();
		
		$si = new Sliderimages();
		$si->slider_id = $s->slider_id;
		$si->image_id = Bilder::model()->find('kategorie = "slider"')->bild_id;
		$si->position = $s->getNextPosition();
		$si->title = 'blank_title';
		$si->text = 'blank_text';
		$si->save();
		
		
		return $s;
	}
}