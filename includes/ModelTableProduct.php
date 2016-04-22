<?php

require_once('ModelTable.php');
require_once('ModelTableImage.php');

class ModelTableProduct extends ModelTable {

	/**
	 * @var ModelTableImage
	 */
	private $_modelTableImage = null;
	
	/**
	 * @var ModelTable
	 */
	private $_modelProductImageColor = null;
	
	/**
	 * @var ModelTable
	 */
	private $_modelColor = null;
	
	public function __construct() {		
		parent::__construct('product');
		$this->setAlias('prod');
	}
	
	public function addImage($productId, $imageId, $color_id, $front = true) {
		$productImageColorModel = new ModelTable('product_image_color');
		$productImageColorModel->save(array(
			'product_id'	=> $productId,
			'image_id'		=> $imageId,
			'color_id'		=> $color_id,
			'front'			=> $front
		), true);
	}
	
	public function removeImage($productId, $imageId, $color_id) {
		$productImageColorModel = new ModelTable('product_image_color');
		$productImageColorModel->delete(array(
			'product_id'	=> $productId,
			'image_id'		=> $imageId,
			'color_id'		=> $color_id
		));
	}
	
	public function getColors($product_id) {
		$productImageColorModel = new ModelTable('product_image_color');
		$productImageColorModel->setAlias('p_img');
		return $productImageColorModel->getList(
			array('DISTINCT(color_id) color_id, c.cor, c.hex'),
			array('p_img.product_id = ' . $this->quote($product_id)),
			array(
				'JOIN cor c ON p_img.color_id = c.id'
			)
		);
	}
	
	/**
	 * @return modelTableImage
	 */
	private function _getModelTableImage() {
		if(!$this->_modelTableImage) {
			require_once('ModelTableImage.php');
			$this->_modelTableImage = new ModelTableImage();
			$this->_modelTableImage->setImageType('product');
			$this->_modelTableImage->setAlias('img');
		}
		return $this->_modelTableImage;
	}
	
	/**
	 * @return ModelTable
	 */
	private function _getModelProductImageColor() {
		if(!$this->_modelProductImageColor) {
			$this->_modelProductImageColor = new ModelTable('product_image_color');
			$this->_modelProductImageColor->setAlias('product_img_color');
		}
		return $this->_modelProductImageColor;
	}
	
	/**
	 * @return ModelTable
	 */
	private function _getModelColor() {
		if(!$this->_modelColor) {
			$this->_modelColor = new ModelTable('cor');
			$this->_modelColor->setAlias('cor');
		}
		return $this->_modelColor;
	}	
	
	public function getImages($product_id, $color_id = null, $orderBy = null) {
		
		$where = array($this->getAlias() . '.product_id = ' . $this->quote($product_id));
		if($color_id !== null)
			array_push($where, $this->_getModelProductImageColor()->getAlias() . '.color_id = ' . $this->quote($color_id));
			
		if(!$orderBy)
			$order = array(
				$this->_getModelColor()->getAlias() . '.cor ASC',
				$this->_getModelTableImage()->getAlias() . '.id DESC'
			);			
		
		return $this->_getModelTableImage()->getList(
			// Columns
			array(
				$this->_getModelTableImage()->getAlias() . '.id',
				$this->_getModelProductImageColor()->getAlias() . '.color_id',
				$this->_getModelColor()->getAlias() . '.cor',				
				$this->_getModelTableImage()->getAlias() . '.file',
				$this->_getModelTableImage()->getAlias() . '.thumb',
				$this->_getModelTableImage()->getAlias() . '.original',
				$this->_getModelProductImageColor()->getAlias() . '.front'
			),
			
			// Where
			$where,
			
			// Joins
			array(
				'JOIN ' . $this->_getModelProductImageColor()->getTable() . ' ' . $this->_getModelProductImageColor()->getAlias() . ' ON ' . $this->_getModelTableImage()->getAlias() . '.id = ' . $this->_getModelProductImageColor()->getAlias() . '.image_id',			
				'JOIN ' . $this->getTable() . ' ' . $this->getAlias() . ' ON ' . $this->_getModelProductImageColor()->getAlias() . '.product_id = ' . $this->getAlias() . '.product_id',
				'JOIN ' . $this->_getModelColor()->getTable() . ' ' . $this->_getModelColor()->getAlias() . ' ON ' . $this->_getModelColor()->getAlias() . '.id = ' . $this->_getModelProductImageColor()->getAlias() . '.color_id'
			),
			
			// Order by
			$orderBy
		);
	}
		
	public function delete($id) {
		if($this->_hasOrderWithProduct($id))
			return $this->query('UPDATE product SET `status` = 0 WHERE ' . $this->getPrimaryKeyFilter($id));
		else
			return parent::delete($id);		
	}
	
	protected function _hasOrderWithProduct($product_id) {
		// @todo: passar a logica para o model de order_item
		$result = $this->queryToArray('SELECT COUNT(*) AS n FROM order_item WHERE product_id = ' . $this->quote($product_id));
		return $result[0]['n'] > 0? true : false;		
	}

	public function getListWithImages($arrColumns = array(), $arrWhere = array(), $arrOrder = array(), $strLimit = null) {
		$modelImage = new ModelTableImage();
		$modelImage->setAlias('img');

		$modelImageColor = new ModelTable('product_image_color');
		$modelImageColor->setAlias('img_color');
		
		if(!$arrColumns) {
			$arrColumns = array(
				$this->getAlias() . '.*',
				$modelImage->getAlias() . '.id image_id',
				$modelImageColor->getAlias() . '.color_id',
				$modelImage->getAlias() . '.file',
				$modelImage->getAlias() . '.thumb',
			);
		}
		
		$arrJoins = array(
			'JOIN (' . $this->_getQueryProductsDefaultColor() . ') product_color ON product_color.product_id = ' . $this->getAlias() . '.product_id',
			'JOIN ' . $modelImage->getTable() . ' ' . $modelImage->getAlias() . ' ON ' . ' product_color.image_id = ' . $modelImage->getAlias() . '.id',
			'JOIN ' . $modelImageColor->getTable() . ' ' . $modelImageColor->getAlias() . ' ON product_color.image_id = img_color.image_id' 
		);
		
		return $this->getList($arrColumns, $arrWhere, $arrJoins, $arrOrder, $strLimit);
	}
	
	/**
	 * Retorna uma consulta que tenha o ID do produto e uma imagem (randomica) associada ao produto 
	 */
	private function _getQueryProductsDefaultColor() {
		return '
			SELECT product_id, image_id FROM (
				SELECT
					DISTINCT(p.product_id),
					(SELECT image_id FROM product_image_color WHERE p.product_id = product_id AND front = 1 ORDER BY RAND() LIMIT 1) image_id
				FROM product_image_color p
			) tmp GROUP BY 1		
		';		
	}
	
}