<?php

/**
 * This is the model class for table "items".
 *
 * The followings are the available columns in table 'items':
 * @property string $item_id
 * @property string $type
 */
class Items extends CActiveRecord
{
	public $elements;
	public $position;
	
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Items the static model class
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
		return 'items';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('type', 'required'),
			array('type', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('item_id, type', 'safe', 'on'=>'search'),
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
			'item_id' => 'Item',
			'type' => 'Type',
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

		$criteria->compare('item_id',$this->item_id,true);
		$criteria->compare('type',$this->type,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public function addToSite($site) {
		$si = new Siteitems();
		$si->site_id = $site->site_id;
		$si->item_id = $this->item_id;
		$si->position = Siteitems::getNextPosition($si->site_id, $si->item_id);
		$si->save();
	}
	
	public function addElement($element, $position) {
		$ie = Itemelements::model()->find('item_id = '.$this->item_id.' AND position = '.$position);
		if (!$ie) {
			$ie = new Itemelements();
			$ie->item_id = $this->item_id;
			$ie->position = $position;
		}
		$ie->element_id = $element->element_id;
		$ie->save();
	}

	public function copy() {
		$copy = new Items();
		$copy->type = $this->type;
		$copy->save();
		
		foreach ($this->getElements() AS $position => $element) {
			$element_copy = $element->copy();
			$copy->addElement($element_copy, $position);
		}
		
		return $copy;
	}
	
	protected function afterDelete() {
		$ies = Itemelements::model()->findAll('item_id = '.$this->item_id);
		foreach ($ies AS $ie) {
			$ie->delete();
		}
		$sis = Siteitems::model()->findAll('item_id = '.$this->item_id);
		foreach ($sis AS $si) {
			$si->delete();
		}
		return parent::afterDelete();
	}
	
	public function getType() {
		$it = Itemtypes::model()->find('itemtype_id = '.$this->type);
		return $it->name;
	}
	
	public function getElements() {
		$ies = Itemelements::model()->findAll(array(
			'condition' => 'item_id = '.$this->item_id,
			'order' => 'position ASC'
		));
		
		$this->elements = array();
		foreach ($ies AS $ie) {
			$this->elements[$ie->position] = Elements::model()->findByPk($ie->element_id);
		}
		
		return $this->elements;
	}
	
	public function getElementNames() {
		$this->getElements();
		$names = array();
		foreach ($this->elements AS $ie) {
			$names[] = $ie->name;
		}
		return $names;
	}

	public function getElementByName($name) {
		$this->getElements();
		
		$itet = Itemtypeelementtypes::model()->find('itemtype_id = '.$this->type.' AND name LIKE "'.$name.'"');
		$ie = Itemelements::model()->find('item_id = '.$this->item_id.' AND position = '.$itet->position);
		return $ie->getElement();
	}
}