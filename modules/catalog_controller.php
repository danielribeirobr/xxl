<?php

/**
 * catalog_controller.php - Catalogo de compras
 * @author Daniel Ribeiro <daniel@danielribeiro.com>
 * @since 2008-02-22
 */

require_once('View.php');
require_once('Conf.php');
require_once('ModelTableProduct.php');
require_once('Cart.php');

class catalogController extends Controller {

	/**
	 * @var View
	 */
	public $view;
	
	/**
	 * @var Conf
	 */
	protected $_conf;
	
	/**
	 * @var ModelTableProduct
	 */
	protected $modelProduct;
	
	/**
	 * @var Cart
	 */
	protected $cart;

	/**
	 * Contructor Method
	 *
	 */
	public function __construct(){
		$parameters = $_REQUEST;
		$this->_conf = new Conf();
		$this->cart = new Cart();
		$this->modelProduct = new ModelTableProduct();
		$this->view = new View();
		if(
			!$this->_getIsAcceptedTerms()
			&& $parameters['action'] != 'showTerms'
			&& $parameters['action'] != 'acceptTerms'
		) {
			$this->redirect('catalog', 'showTerms', array(), true);
			return;	
		}
	}
	
	public function _default(){
		$this->showCatalog();
	}
	
	public function showCatalog(){	
		$parameters = $_REQUEST;
		$arrWhere = array('status = 1');
		if($parameters['category'])
			array_push($arrWhere, 'category = ' . $this->modelProduct->quote($parameters['category']));
		
		$this->view->assign('products', $this->modelProduct->getListWithImages(null, $arrWhere, 'RAND()'));
		$this->view->assign('cart', $this->getCartItems());
		$this->view->setTemplate('catalog/catalog.tpl');
	}
	
	protected function getCartItems() {		
		foreach($cart = $this->cart->getAll() as $i => $item) {
			$cart[$i]['product'] = $this->modelProduct->get($item['product_id']);
			$cart[$i]['product']['images'] = $this->modelProduct->getImages($item['product_id'], $item['color_id']);
		}
		return $cart;
	}
	
	public function productDetails() {
		$parameters = $_REQUEST;
		$product = $this->modelProduct->get($parameters['product_id']);		
		if($product['sizes'])
			$product['sizes'] = unserialize($product['sizes']);
		$product['colors'] = $this->modelProduct->getColors($parameters['product_id']);
		
		if(!$parameters['color_id'])
			$parameters['color_id'] = $product['colors'][rand(0, count($product['colors'])-1)]['color_id'];
			
		
		$product['color_id'] = $parameters['color_id'];
		$product['images'] = $this->modelProduct->getImages($parameters['product_id'], $parameters['color_id'], 'RAND()');		
		
		$this->view->assign('product', $product);
		$this->view->assign('cart', $this->getCartItems());
		$this->view->setTemplate('catalog/product.tpl');
	}
	
	public function addProduct() {
		$parameters = $_REQUEST;
		$this->cart->add($parameters['product_id'], $parameters['color_id'], $parameters['size']? $parameters['size'] : null, $parameters['qty']);
		$this->productDetails();
	}
	
	public function removeProduct() {
		$parameters = $_REQUEST;
		$this->cart->remove($parameters['product_id'], $parameters['color_id'], $parameters['size']);
		$this->productDetails();
	}
	
	public function checkout() {
		$parameters = $_REQUEST;
		if($parameters['doCheckout']) {
			$this->sendEmailOrder();
			echo $this->saveOrder() ? '1' : '0';
		} else {
			$this->view->assign('cart', $this->getCartItems());
			$this->view->setTemplate('catalog/checkout.tpl');			
		}
	}
	
	protected function saveOrder() {
		require_once('ModelTableOrder.php');
		$parameters = $_REQUEST;
		$modelOrder = new ModelTableOrder();
		return $modelOrder->place(array(
			'name'		=> $parameters['f_nome'],
			'email'		=> $parameters['f_email'],
			'phone'		=> $parameters['f_telefone'],
			'document'	=> $parameters['f_cnpj'] 
		), $this->cart);
	}
	
	protected function sendEmailOrder() {
		$parameters = $_REQUEST;
		
		$bodyParts = array();
		foreach($parameters as $key => $value)
			if(substr($key, 0, 2) == 'f_')
				array_push($bodyParts, ucfirst(substr($key, 2)) . ': ' . $value);
		$body.= 'Detalhes do solicitante do pedido:' . PHP_EOL . str_repeat('=', 60) . PHP_EOL . join(PHP_EOL, $bodyParts) . str_repeat(PHP_EOL, 3);
		
		$bodyParts = array();
		foreach($this->getCartItems() as $item) {
			$part = $item['product']['name'] . PHP_EOL;
			if($item['size'])
				$part.= 'Tamanho: ' . $item['size'] . PHP_EOL;
			$part.= 'Cor: ' . $item['product']['images'][0]['cor'] . PHP_EOL;
			$part.= 'Qtd: ' . $item['qty'] . PHP_EOL;
			array_push($bodyParts, $part);
		}
		$body.= 'Detalhes do pedido:' . PHP_EOL . str_repeat('=', 60) . PHP_EOL . join(PHP_EOL, $bodyParts);
		
		$headers .= 'From: '.$this->appConfig['app_name'].' <'.$this->appConfig['app_email'].'>' . "\r\n";
		if($recipient = $this->_conf->getConf('site-email'))
			return @mail($recipient, 'Solicitação de Pedido - ' . $parameters['f_nome'], $body, $headers)? 1 : 0;
		else
			return false;		
	}
	
	public function acceptTerms() {
		$this->_setIsAcceptedTerms();
		$this->showCatalog();
	}
	
	public function showTerms(){
		$this->view->setTemplate('catalog/terms.tpl');		
	}
	
	protected function _getIsAcceptedTerms(){
		return isset($_SESSION['terms']);
	}
	
	protected function _setIsAcceptedTerms() {
		$_SESSION['terms'] = true;
	}
	
}