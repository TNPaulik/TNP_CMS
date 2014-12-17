<?php

/**
 * This is the model class for table "itemtypes".
 *
 * The followings are the available columns in table 'itemtypes':
 * @property string $itemtype_id
 * @property string $name
 */
class Itemtypes extends CActiveRecord
{
	
	public $elementtypes;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Itemtypes the static model class
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
		return 'itemtypes';
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
			array('itemtype_id, name', 'safe', 'on'=>'search'),
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

		$criteria->compare('itemtype_id',$this->itemtype_id,true);
		$criteria->compare('name',$this->name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	protected function afterDelete() {
		$items = Items::model()->findAll('type = '.$this->itemtype_id);
		foreach ($items AS $item) {
			$item->delete();
		}
		return parent::afterDelete();
	}
	
	public function getElementTypes($nr = false) {
		$this->elementtypes = Itemtypeelementtypes::model()->findAll(array(
			'condition' => 'itemtype_id = '.$this->itemtype_id, 
			'order' => 'position ASC'
		));
		
		if ($nr) {
			return isset($this->elementtypes[$nr-1]) ? $this->elementtypes[$nr-1] : false;
		} else {			
			return $this->elementtypes;
		}
	}
	
	public function getBlank() {
		$item = new Items();
		$item->type = $this->itemtype_id;
		$item->save();

		$i = 1;
		
		foreach ($this->getElementTypes() AS $et) {
			
			$element = new Elements();
			$element->name = 'autocreate';
			$element->type = $et->elementtype;
			
			switch ($et->elementtype) {
				case 'bilder':
					$element->foreign_id = Bilder::model()->find()->bild_id;
					break;
				case 'text':
					$text = Texts::getBlank();
					$element->foreign_id = $text->text_id;
					break;
				case 'slider':
					$slider = Sliders::getBlank();
					$element->foreign_id = $slider->slider_id;
					break;
				default:
					$element->foreign_id = 1;
			}
			
			$element->save();
			
			$ie = new Itemelements();
			$ie->item_id = $item->item_id;
			$ie->element_id = $element->element_id;
			$ie->position = $i++;
			$ie->save();
		}
		
		return $item;
	}
}