<?php

class Cart {
	
	protected function _getCartArray() {
		if(!session_id()) {
			session_start();
			$_SESSION['cart'] = array(); 
		}
		if(!$_SESSION['cart'])
			$_SESSION['cart'] = array();
		return $_SESSION['cart'];
	}
	
	protected function _setCartArray($cart) {
		$_SESSION['cart'] = $cart;
	}
	
	public function emptyCart() {
		$this->_setCartArray(array());
	}
	
	public function add($product_id, $color_id, $size = null, $qty = 1) {
		$cart = $this->get($product_id, $color_id, $size);
		$this->set($product_id, $color_id, $size, ($cart = $this->get($product_id, $color_id, $size))? $qty +=$cart['qty'] : $qty);	
	}
		
	public function set($product_id, $color_id, $size = null, $qty = 1) {
		$cart = $this->_getCartArray();
		if(($index = $this->_getIndex($product_id, $color_id, $size)) !== false)
			$cart[$index]['qty'] = $qty;
		else
			$cart[] = array(
				'product_id'	=> $product_id,
				'color_id'		=> $color_id,
				'size'			=> $size,
				'qty'			=> $qty 
			);
		$this->_setCartArray($cart);
	}
	
	public function remove($product_id, $color_id, $size) {
		if(($index = $this->_getIndex($product_id, $color_id, $size)) !== false) {
			$cart = $this->_getCartArray();
			unset($cart[$index]);
			$this->_setCartArray($cart);
		}
	}
	
	protected function _getIndex($product_id, $color_id, $size) {
		foreach($this->_getCartArray() as $i => $item)
			if(
				$item['product_id'] == $product_id
				&& $item['color_id'] == $color_id
				&& $item['size'] == $size
			)
				return $i;
		return false;		
	}
	
	public function get($product_id, $color_id, $size) {
		if(($index = $this->_getIndex($product_id, $color_id, $size)) !== false) {
			$cart = $this->_getCartArray();
			return $cart[$index];
		}
		return false;
	}
	
	public function getAll() {
		$cart = array();
		foreach($this->_getCartArray() as $item)
			array_push($cart, $item);
		return $cart;
	}
	
}