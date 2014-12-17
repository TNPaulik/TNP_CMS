<?php

/**
 * This is the model class for table "texts".
 *
 * The followings are the available columns in table 'texts':
 * @property string $text_id
 * @property string $name
 */
class Texts extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Texts the static model class
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
		return 'texts';
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
			array('text_id, name', 'safe', 'on'=>'search'),
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
			'text_id' => 'Text',
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

		$criteria->compare('text_id',$this->text_id,true);
		$criteria->compare('name',$this->name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	protected function afterDelete() {
		$lts = Languagetexts::model()->findAll('text_id = '.$this->text_id);
		foreach ($lts AS $lt) {
			$lt->delete();
		}
		return parent::afterDelete();
	}
	
	public static function getDefaultText($text_id) {
		$lt = Languagetexts::model()->find(array(
			'condition' => 'text_id = '.$text_id.' AND text != ""'
		));
		return ($lt ? $lt->text : '');
	}
	
	public function getText() {
		$lt = Languagetexts::model()->find(array(
			'condition' => 'text_id = '.$this->text_id.' AND language_id = '.SiteController::getLanguage()->language_id
		));
		return ($lt ? $lt->text : '');
	}
	
	public function getTextModel($language = false) {
		$lt = Languagetexts::model()->find(array(
			'condition' => 'text_id = '.$this->text_id.' AND language_id = '.($language ? $language->language_id : (SiteController::getLanguage()->language_id))
		));
		
		if (!$lt) {
			$lt = new Languagetexts();
			$lt->language_id = $language ? $language->language_id : SiteController::getLanguage()->language_id;
			$lt->text_id = $this->text_id;
			$lt->save();
		}
		
		return ($lt);
	}
	
	public static function getBlank() {
		$text = new Texts();		
		$text->name = 'generated';
		$text->save();

		foreach (Languages::model()->findAll() AS $language) {
			$language->setText($text->text_id, 'blank');
		}
		
		return $text;
	}
}