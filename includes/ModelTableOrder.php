<?php

require_once('ModelTable.php');

class ModelTableOrder extends ModelTable {

	public function __construct() {		
		parent::__construct('order');
		$this->setAlias('ord');
	}
	
	/**
	 * Place a new order
	 * @param array $customer
	 * @param Cart $cart
	 */
	public function place(array $customer, Cart $cart) {
		$order = array_merge($customer, array(
			'date'	=> date('Y-m-d H:i:s')
		));
				
		$order_id = $this->save($order);
		
		$modelOrderItems = new ModelTable('order_item');
		foreach($cart->getAll() as $item) {
			$item['order_id'] = $order_id;
			$modelOrderItems->save($item);
		}
		
		$cart->emptyCart();
		return $order_id;		
	}
	
	public function get($id) {
		$order = parent::get($id);
		if($order) {
			
			$cols = array(
				'pr.product_id',
				'pr.name',
				'cor.id color_id',
				'cor.cor',
				'oi.size',
				'oi.qty'
			);
			$joins = array(
				'LEFT JOIN product pr USING(product_id)',
				'LEFT JOIN cor cor ON cor.id = oi.color_id',
			);
			
			$orderItemModel = new ModelTable('order_item');
			$orderItemModel->setAlias('oi');
			$order['items'] = $orderItemModel->getList($cols, array('order_id = ' . $this->quote($id)), $joins);
		}
		return $order;
	}
}