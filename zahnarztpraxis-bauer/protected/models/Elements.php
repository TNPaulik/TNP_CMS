<?php

/**
 * This is the model class for table "elements".
 *
 * The followings are the available columns in table 'elements':
 * @property string $element_id
 * @property string $elementtype
 * @property string $foreignid
 */
class Elements extends CActiveRecord
{
	public static $types = array('bilder', 'galerie', 'slider', 'text');
	
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Elements the static model class
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
		return 'elements';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('type, foreign_id', 'required'),
			array('type', 'length', 'max'=>255),
			array('foreign_id', 'length', 'max'=>10),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('element_id, type, foreign_id', 'safe', 'on'=>'search'),
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
			'element_id' => 'Element',
			'name' => 'Name',
			'type' => 'Elementtype',
			'foreign_id' => 'Foreignid',
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

		$criteria->compare('element_id',$this->element_id,true);
		$criteria->compare('elementtype',$this->elementtype,true);
		$criteria->compare('foreignid',$this->foreignid,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public function copy() {
		$copy = new Elements();
		$copy->name = $this->name . ' Kopie';
		$copy->type = $this->type;
		$copy->foreign_id = $this->foreign_id;
		
		if ($this->type == 'text') {
			$text = new Texts();
			$text->name = $this->getElement()->name.' Kopie';
			$text->save();
			$copy->foreign_id = $text->text_id;
			
			foreach (Languages::model()->findAll() as $language) {
				$lt = $this->getElement()->getTextModel($language);
				$lt_copy = new Languagetexts();
				$lt_copy->text_id = $text->text_id;
				$lt_copy->language_id = $lt->language_id;
				$lt_copy->text = $lt->text;
				$lt_copy->save();
			}
		}
		
		$copy->save();		
		return $copy;
	}

	protected function afterDelete() {
		$ies = Itemelements::model()->findAll('element_id = '.$this->element_id);
		foreach ($ies AS $ie) {
			$ie->delete();
		}
		return parent::afterDelete();
	}
	
	public function getElement() {
		if ($this->type == 'text') {
			return Texts::model()->findByPk($this->foreign_id);
		} else if ($this->type == 'bilder') {
			return Bilder::model()->findByPk($this->foreign_id);
		} else if ($this->type == 'slider') {
			return Sliders::model()->findByPk($this->foreign_id);
		}
	}
}