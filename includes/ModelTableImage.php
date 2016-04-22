<?php

require_once('ModelTable.php');

class ModelTableImage extends ModelTable {

	protected $_imageType = null;
	private $_confModel = null;
	
	public function __construct() {
		parent::__construct('image');
	}
	
	public function setImageType($imageType) {
		$this->_imageType = $imageType;
		return $this;
	}
	
	public function getImageType() {
		return $this->_imageType;
	}
	
	private function _getConfModel() {
		if(!$this->_confModel)
			$this->_confModel = new Conf();
		return $this->_confModel;
	}

	public function getList($arrColumns = array(), $arrWhere = array(), $arrJoins = array(), $arrOrder = array(), $strLimit = null) {		
		if(!$arrWhere)
			$arrWhere = array();
		elseif(is_string($arrWhere))
			$arrWhere = array($arrWhere);
		array_push($arrWhere, ($this->getAlias()? $this->getAlias() : $this->getTable()) . '.type = ' . $this->quote($this->getImageType()));
		return parent::getList($arrColumns, $arrWhere, $arrJoins, $arrOrder);
	}
	
	public function save($parameters, $file = null) {
		if($this->getImageType())
			$parameters['type'] = $this->getImageType();
					
		if($file['name']){
			// Define o nome das imagens
			$parameters['file'] = time() . '_' . $file['name'];
			$parameters['thumb'] = time() . '_th_' . $file['name'];
			$parameters['original'] = time() . '_o_' . $file['name'];
			
			// Salva a imagem no tamanho original
			copy($file['tmp_name'], utf8_decode('images/db/' . $parameters['original']));
	
			// requisita a biblioteca de redimensionamento de imagem e cria o objeto para redimensionamento
			require_once('includes/ResizeImage.class.php');
			$objImg = new ResizeImage();
	
			// define algumas configuracoes para redimensionamento
			$objImg->setProportions(true);
			$objImg->setSource($file['tmp_name']);
			
			// Obtem o tamamho das imagens
			$sizes = $this->_getSizes($parameters['type']);

			// salva o thumbnail
			if(isset($sizes['thumb']['w']) && $sizes['thumb']['w'])
				$objImg->setWidth($sizes['thumb']['w']);
			if(isset($sizes['thumb']['h']) && $sizes['thumb']['h'])
				$objImg->setHeight($sizes['thumb']['h']);
				
			$objImg->setDestination(utf8_decode('images/db/' . $parameters['thumb']));
			$objImg->Resize();
	
			// save the image
			if(isset($sizes['thumb']['w']) && $sizes['thumb']['w'])
				$objImg->setWidth($sizes['image']['w']);
			if(isset($sizes['thumb']['h']) && $sizes['thumb']['h'])				
				$objImg->setHeight($sizes['image']['h']);
			$objImg->setDestination(utf8_decode('images/db/' . $parameters['file']));
			$objImg->Resize();
			
			// if informed a id, i should remove the old images
			if($parameters['id'])
				$this->_removeImageFilesByImageId($parameters['id']);
		}
		return parent::save($parameters);
	}
	
	private function _getSizes($type) {
		return unserialize($this->_getConfModel()->getConf($type . '_sizes'));		
	}
	
	public function delete($id) {
		$this->_removeImageFilesByImageId($id);
		return parent::delete($id);
	}
	
	private function _removeImageFilesByImageId($id) {
		$image = $this->get($id);
		if($image) {
			@unlink(utf8_decode('images/db/' . $image['file']));				
			@unlink(utf8_decode('images/db/' . $image['thumb']));
			@unlink(utf8_decode('images/db/' . $image['original']));
		}
	}
	
}