<?php

require_once('ModelTableOrder.php');
require_once('View.php');

class admin_orderController extends Controller {

	/**
	 * @var ModelTable
	 */
	private $model;

	/**
	 * @var View
	 */
	public $view;

	public function __construct(){
		$this->model = new ModelTableOrder();
		$this->view = new View();
	}

	public function _default(){
		$this->orderList();
	}

	public function orderList($parameters = null){
		$parameters = $_REQUEST;
		$this->view->assign('orders', $this->model->getList(null, null, null, 'date DESC'));
		$this->view->setTemplate('admin_order/list.tpl');
	}

	public function open($parameters = null){
		$parameters = $parameters ? $parameters : $_REQUEST;
		$this->view->assign('order', $this->model->get($parameters['id']));
		$this->view->setTemplate('admin_order/view.tpl');		
	}
	
}