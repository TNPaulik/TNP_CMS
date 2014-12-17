<?php

/**
 * This is the model class for table "sites".
 *
 * The followings are the available columns in table 'sites':
 * @property string $site_id
 * @property string $parent_id
 * @property integer $is_in_menu
 * @property integer $position
 * @property string $iconstyle
 * @property string $name
 * @property string $url
 * @property string $title
 * @property string $header
 * @property string $text
 * @property string $metakeywords
 * @property string $metadescription
 */
class Sites extends CActiveRecord
{
	protected $items;
	protected $itemtypes;
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Sites the static model class
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
		return 'sites';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('parent_id, is_in_menu, position, name, url, title, header, text, metakeywords, metadescription', 'required'),
			array('is_in_menu, position', 'numerical', 'integerOnly'=>true),
			array('parent_id', 'length', 'max'=>10),
			array('iconstyle, name, url, title, metakeywords, metadescription', 'length', 'max'=>255),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('site_id, parent_id, is_in_menu, position, iconstyle, name, url, title, header, text, metakeywords, metadescription', 'safe', 'on'=>'search'),
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
			'parent_id' => 'Parent',
			'is_in_menu' => 'Is In Menu',
			'position' => 'Position',
			'iconstyle' => 'Iconstyle',
			'name' => 'Name',
			'url' => 'Url',
			'title' => 'Title',
			'header' => 'Header',
			'text' => 'Text',
			'metakeywords' => 'Metakeywords',
			'metadescription' => 'Metadescription',
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
		$criteria->compare('parent_id',$this->parent_id,true);
		$criteria->compare('is_in_menu',$this->is_in_menu);
		$criteria->compare('position',$this->position);
		$criteria->compare('iconstyle',$this->iconstyle,true);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('url',$this->url,true);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('header',$this->header,true);
		$criteria->compare('text',$this->text,true);
		$criteria->compare('metakeywords',$this->metakeywords,true);
		$criteria->compare('metadescription',$this->metadescription,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	protected function afterDelete() {
		$sis = Siteitems::model()->findAll('site_id = '.$this->site_id);
		foreach ($sis AS $si) {
			$si->delete();
		}
		
		$sits = Siteitemtypes::model()->findAll('site_id = '.$this->site_id);
		foreach ($sits AS $sit) {
			$sit->delete();
		}
		
		return parent::afterDelete();
	}
	
	public function getNextPosition($parentid) {
		$max = 0;
		$sites = self::model()->findAll(array('condition' => 'parent_id = '.$parentid));
		foreach ($sites AS $site) {
			$max = max($max, $site->position);
		}
		return(++$max);
	}
	
	public function getParent() {
		return self::model()->findByPk($this->parent_id);
	}
	
	public function getChilds() {
		return self::model()->findAll('parent_id = '.$this->site_id.' ORDER BY position');
	}
	
	public function getUrl() {
		return (Yii::app()->getBaseUrl() . '/' . $this->url);
	}
	
	public function getUrlFromName() {
		$url = strtolower($this->name);
		$url = preg_replace('/ä/i','ae', $url);
		$url = preg_replace('/ö/i','oe', $url);
		$url = preg_replace('/ü/i','ue', $url);
		$url = preg_replace('/[^(\x20-\x7F)]*/','', $url);
		$url = preg_replace('/ /', '_', $url);
		return ($url);
	}
	
	public function getItems() {
		$sis = Siteitems::model()->findAll(array(
			'condition' => 'site_id = '.$this->site_id,
			'order' => 'position'
		));
		
		$this->items = array();
		
		foreach ($sis AS $si) {
			$item = Items::model()->findByPk($si->item_id);
			$item->position = $si->position;
			$this->items[] = $item;
		}
		
		return $this->items;
	}
	
	public function getItemtypes() {
		$sits = Siteitemtypes::model()->findAll(array(
			'condition' => 'site_id = '.$this->site_id,
			'order' => 'position'
		));
		
		$this->itemtypes = array();
		
		foreach ($sits AS $sit) {
			$this->itemtypes[] = Itemtypes::model()->findByPk($sit->itemtype_id);
		}
		
		return $this->itemtypes;
	}
	
	public function getItemByType($type) {
		$this->getItems();
		$it = Itemtypes::model()->find('name LIKE "'.$type.'"');
		foreach ($this->items AS $item) {
			if ($item->type == $it->itemtype_id)
				return $item;
		}
	}
	
	public function getItemsByType($type) {
		$items = array();
		$this->getItems();
		$it = Itemtypes::model()->find('name LIKE "'.$type.'"');
		foreach ($this->items AS $item) {
			if ($item->type == $it->itemtype_id)
				$items[] = $item;
		}
		return $items;
	}
	
	public function getItemsArray() {
		$items = array();
		$this->getItems();
		foreach ($this->items AS $item) {
			if (!isset($items[$item->type]))
				$items[$item->type] = array();
			$items[$item->type][] = $item;
		}
		return $items;
	}
}