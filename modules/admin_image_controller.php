<?php

require_once('ModelTableImage.php');
require_once('View.php');
require_once('Conf.php');

class admin_imageController extends Controller {

	/**
	 * @var ModelTableImage
	 */
	private $model;

	/**
	 * @var View
	 */
	public $view;

	/**
	 * @var Conf
	 */
	private $conf;

	public function __construct(){
		$this->model = new ModelTableImage();
		$this->model->setImageType($_REQUEST['type']);
		$this->view = new View();
		$this->conf = new Conf();
	}

	public function _default(){
		$this->imageList();
	}

	public function imageList( $parameters = null ){
		$parameters = $_REQUEST;
		$this->view->assign('images', $this->model->getList());
		$this->view->assign('form', $parameters);
		$this->view->setTemplate('admin_image/list.tpl');
	}

	public function imageAdd( $parameters = null )	{
		$parameters['form'] = $parameters ? $parameters : $_REQUEST;
		$this->imageDisplayForm($parameters);
	}

	public function imageSave( $parameters = null ){
		$parameters = $parameters ? $parameters : $_REQUEST;

		// validate form
		$parameters['file'] = $_FILES['image'];
		$error = $this->imageValidateForm( $parameters );
		if( count($error) ){
			$this->imageDisplayForm(array('form' => $parameters, 'error' => $error));
			return false;
		}
		$id = $this->model->save($parameters, $parameters['file']);

		// exibe a mensagem
		$this->view->setMessage('Image saved successfull', $this->getLinkModule('admin_image', null, array('type' => $parameters['type'])));
		
		return $id;
	}
	
	public function imageDelete( $parameters = null ){
		$parameters = $parameters ? $parameters : $_REQUEST;		
		if(!$parameters['confirm']){
			$this->view->setConfirmation('Do you really want to remove this item?');
			return false;
		}
		else {
			$image = $this->model->get($parameters['id']);
			$this->model->delete($parameters['id']);
			$this->view->setMessage('Record removed.', $this->getLinkModule('admin_image', null, array('type' => $image['type'])));
			return true;
		}
	}

	private function imageValidateForm( $parameters ){
		// validate required fields
			$requiredFields = array('title', 'type');

			// realiza a validacao da imagem
			// testa se o tipo de arquivo eh um tipo de arquivo valido
			if(
				   (!$parameters['id'] || $parameters['file']['tmp_name'])
				&& $parameters['file']['type'] != 'image/jpeg'
				&& $parameters['file']['type'] != 'image/png'
			){
				$error['image'] = 'Invalid file for picture.';
			}

			foreach ( $requiredFields as $item ){
				if(!strlen(trim($parameters[$item]))){
					$error[$item] = 'Required field!';
				}
			}

		return (array) $error;
	}

	public function imageEdit( $parameters = null ){
		$parameters = $parameters ? $parameters : $_REQUEST;

		// display the form
		$this->imageDisplayForm(
			array(
				'form' => $this->model->get($parameters['id'])
			)
		);
	}

	private function imageDisplayForm( $parameters ) {
		$this->view->assign('form', $parameters['form']);
		$this->view->assign('error', $parameters['error']);
		$this->view->setTemplate('admin_image/form.tpl');
	}

}

?>