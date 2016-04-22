<?php

require_once('ModelTable.php');
require_once('View.php');

class admin_dealerController extends Controller {

	/**
	 * @var ModelTable
	 */
	private $model;

	/**
	 * @var View
	 */
	public $view;

	public function __construct(){
		$this->model = new ModelTable('dealer');
		$this->view = new View();
	}

	public function _default(){
		$this->dealerList();
	}

	public function dealerList( $parameters = null ){
		$parameters = $_REQUEST;
		$this->view->assign('dealers', $this->model->getList());
		$this->view->setTemplate('admin_dealer/list.tpl');
	}

	public function add( $parameters = null )	{
		$parameters['form'] = $parameters ? $parameters : $_REQUEST;
		if(!isset($parameters['form']['state']) || !$parameters['form']['state'])
			$parameters['form']['state'] = $this->getDefaultState();
		$this->displayForm($parameters);
	}
	
	public function save( $parameters = null ){
		$parameters = $parameters ? $parameters : $_REQUEST;
		if($error = $this->validate($parameters)) {
			$this->displayForm(array('form' => $parameters, 'error' => $error));
			return;			
		}
		$id = $this->model->save($parameters);
		$this->view->setMessage('Saved successfull', $this->getLinkModule('admin_dealer'));		
		return $id;
	}
	
	public function remove( $parameters = null ){
		$parameters = $parameters ? $parameters : $_REQUEST;

		if( !$parameters['confirm'] ){
			$this->view->setConfirmation('Do you really want to remove this item?');
			return false;
		}
		else{
			$this->model->delete($parameters['id']);
			$this->view->setMessage('Record removed.', $this->getLinkModule('admin_dealer'));
			return true;
		}
	}

	private function validate( $parameters ){
		$requiredFields = array('name', 'state', 'city');
		$error = array();
		foreach ( $requiredFields as $item ){
			if(!strlen(trim($parameters[$item]))){
				$error[$item] = 'Required field!';
			}
		}
		return $error;
	}

	public function open( $parameters = null ){
		$parameters = $parameters ? $parameters : $_REQUEST;
		$this->displayForm(
			array(
				'form' => $this->model->get($parameters['id'])
			)
		);
	}

	private function displayForm( $parameters ) {
		$this->view->assign('states', $this->getStateList());
		$this->view->assign('form', $parameters['form']);
		$this->view->assign('error', $parameters['error']);
		$this->view->setTemplate('admin_dealer/form.tpl');
	}
	
	private function getStateList() {
		return array(
			'AC',
			'AL',
			'AM',
			'AP',
			'BA',
			'CE',
			'DF',
			'ES',
			'GO',
			'MA',
			'MT',
			'MS',
			'MG',
			'PA',
			'PB',
			'PR',
			'PE',
			'PI',
			'RJ',
			'RN',
			'RO',
			'RS',
			'RR',
			'SC',
			'SE',
			'SP',
			'TO'
		);
	}
	
	private function getDefaultState() {
		return 'SP';
	}

}

?>