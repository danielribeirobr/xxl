<?php

require_once('ModelTableImage.php');
require_once('ModelTableProduct.php');
require_once('View.php');
require_once('Conf.php');

class admin_productController extends Controller {

	/**
	 * @var ModelTableProduct
	 */
	private $modelProduct;
	
	/**
	 * @var Conf
	 */
	private $modelConf;
	
	/**
	 * @var View
	 */
	public $view;

	public function __construct(){
		$this->modelProduct = new ModelTableProduct();
		$this->modelConf = new Conf();
		$this->view = new View();
	}

	public function _default(){
		$this->productList();
	}

	public function productList($parameters = null){
		$parameters = $_REQUEST;
		//print_rr($this->modelProduct->getListWithImages());
		$this->view->assign('products', $this->modelProduct->getList());
		$this->view->setTemplate('admin_product/list.tpl');
	}

	public function add($parameters = null)	{
		$this->open(
			array(
				'id' =>	$this->modelProduct->save(
							array(
								'name' 		=> 'New Product',
								'status'	=> 1
							)
						)
			)
		);
	}
	
	public function save($parameters = null){
		$parameters = $parameters ? $parameters : $_REQUEST;
		if($error = $this->validate($parameters)) {
			$this->displayForm(array('form' => $parameters, 'error' => $error));
			return;			
		}
		
		$parameters['sizes'] = isset($parameters['sizes']) ? serialize($parameters['sizes']) : array();
		
		$id = $this->modelProduct->save($parameters);
		$this->view->setMessage('Saved successfull', $this->getLinkModule('admin_product'));		
		return $id;
	}
	
	private function validateImageColor($parameters) {
		if(!$parameters['color_id'])
			return 'Please, select a color';

		// realiza a validacao da imagem
		// testa se o tipo de arquivo eh um tipo de arquivo valido
		if(
			   !$parameters['file']['tmp_name']			
			|| ($parameters['file']['type'] != 'image/jpeg' && $parameters['file']['type'] != 'image/png')
		)
			return 'Invalid file for picture.';

		return false;		
	}
	
	public function addImageColor($parameters = null) {
		$parameters = $parameters ? $parameters : $_REQUEST;
		$parameters['file'] = $_FILES['image'];
		$product_id = $this->save();
		
		if(!$error = $this->validateImageColor($parameters)) {
			$modelTableImage = new ModelTableImage();
			$modelTableImage->setImageType('product');
			$image_id = $modelTableImage->save(
				array(
					'title'	=> 'Image for product: ' . $product_id
				),
				$parameters['file']
			);
			$this->modelProduct->addImage($product_id, $image_id, $parameters['color_id'], isset($parameters['front']));
		}
			
		$this->open(
			array(
				'id' => $product_id
			),
			array(
				'image'	=> $error
			) 
		);
	}

	public function removeImageColor() {
		$parameters = $_REQUEST;
		$modelTableImage = new ModelTableImage();
		$modelTableImage->delete($parameters['image_id']);
		$this->modelProduct->removeImage($parameters['id'], $parameters['image_id'], $parameters['color_id']);
		$this->open(array('id' => $parameters['id']));	
	}	
	
	public function remove($parameters = null){
		$parameters = $parameters ? $parameters : $_REQUEST;

		if( !$parameters['confirm'] ){
			$this->view->setConfirmation('Do you really want to remove this item?');
			return false;
		}
		else{
			$this->modelProduct->delete($parameters['id']);
			$this->view->setMessage('Record removed.', $this->getLinkModule('admin_product'));
			return true;
		}
	}

	private function validate($parameters){
		$requiredFields = array('name', 'category');
		$error = array();
		foreach ( $requiredFields as $item ){
			if(!strlen(trim($parameters[$item]))){
				$error[$item] = 'Required field!';
			}
		}
		return $error;
	}

	public function open($parameters = null, $error = null){
		$parameters = $parameters ? $parameters : $_REQUEST;
		$this->displayForm(
			array(
				'form' 	=> $this->modelProduct->get($parameters['id']),
				'error'	=> $error
			)
		);
	}

	private function displayForm($parameters) {
		$parameters['form']['sizes'] = $parameters['form']['sizes']? unserialize($parameters['form']['sizes']) : array();
		$modelColors = new ModelTable('cor');
		$this->view->assign('colors', $modelColors->getList(null, null, null, 'cor'));
		$this->view->assign('sizes', unserialize($this->modelConf->getConf('tamanhos')));
		$this->view->assign('categories', unserialize($this->modelConf->getConf('categories')));	
		$this->view->assign('images', $this->modelProduct->getImages($parameters['form']['product_id']));
		$this->view->assign('form', $parameters['form']);
		$this->view->assign('error', $parameters['error']);
		$this->view->setTemplate('admin_product/form.tpl');
	}
	
}
