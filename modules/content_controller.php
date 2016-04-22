<?php

/**
 * content_controller.php - Gerenciamento de conteudo do site
 * @author Daniel Ribeiro <daniel@danielribeiro.com>
 * @since 2008-04-27
 */

require_once('ModelTableImage.php');
require_once('View.php');
require_once('Conf.php');

class contentController extends Controller {

	/**
	 * @var View
	 */
	public $view;

	/**
	 * @var ModelTableImage
	 */
	protected $imageModel;

	/**
	 * Contructor Method
	 *
	 */
	public function __construct(){
		$this->conf = new Conf();		
		$this->view = new View();
		$this->imageModel = new ModelTableImage();
	}
	
	/**
	 * Envia email com mensagem para o gerenciador do site
	 */
	public function sendInfo() {
		$parameters = $_REQUEST;				
		$body = array();
		foreach($parameters as $key => $value)
			if(substr($key, 0, 2) == 'f_')
				array_push($body, ucfirst(substr($key, 2)) . ': ' . $value);
				
		$headers .= 'From: '.$this->appConfig['app_name'].' <'.$this->appConfig['app_email'].'>' . "\r\n";
		if($recipient = $this->conf->getConf('site-email')) {
			$subject = $parameters['subject'];
			if($parameters['f_nome'])
				$subject.= ' - ' . $parameters['f_nome'];
			if($parameters['f_razao-social']) 
				$subject.= ' - ' . $parameters['f_razao-social'];
			echo @mail($recipient, $subject, join(PHP_EOL, $body), $headers)? 1 : 0;
		}
		else
			echo 0;
	}

	/**
	 * Default method
	 *
	 */
	public function _default(){
		$this->showPage();
	}
	
	/**
	 * Exibe a pagina
	 *
	 */
	public function showPage(){
		$parameters = $_REQUEST;
		$page = $_REQUEST['page'] ? $_REQUEST['page'] : 'home';

		if( $page == 'home' ){
			$this->view->setTemplate('content/home.tpl');
			$this->view->assign(
				'images',
				$this->imageModel->setImageType('home')
					->getList(
						null,
						null,
						null,
						array('id DESC'),
						10
					)
			);
		}
		
		if($page == 'stylebook') {
			$this->view->setTemplate('content/stylebook.tpl');
			$this->view->assign(
				'images',
				$this->imageModel->setImageType('stylebook')
					->getList(
						null,
						null,
						null,
						array('id DESC'),
						30
					)
			);
		}
		
		if($page == 'blog') {
			$this->view->setTemplate('content/blog.tpl');
			$this->view->assign(
				'blog',
				$this->imageModel->setImageType('blog')
					->getList(
						null,
						null,
						null,
						array('id DESC'),
						1
					)
			);
			$this->view->assign(
				'vlog',
				$this->imageModel->setImageType('vlog')
					->getList(
						null,
						null,
						null,
						array('id DESC'),
						1
					)
			);			
		}
		
		if($page == 'lifeclub') {
			$this->view->assign('estados', $this->_getEstados());
			$this->view->setTemplate('content/lifeclub.tpl');
		}
		
		if($page == 'contato') {
			$this->view->assign('estados', $this->_getEstados());
			$this->view->setTemplate('content/contato.tpl');
		}
			
		if($page == 'seja-revendedor') {
			$this->view->assign('estados', $this->_getEstados());
			$this->view->setTemplate('content/seja-revendedor.tpl');
		}

		if($page == 'onde-encontrar') {
			$dealerModel = new ModelTable('dealer');			
			$this->view->assign('dealers_states', $dealerModel->queryToArray('SELECT DISTINCT(`state`) FROM dealer'));
			$this->view->assign('dealers', $dealerModel->getList());
			$this->view->setTemplate('content/onde-encontrar.tpl');
		}
				
		//atribui os paramtros no template
		$this->view->assign('parameters', $parameters);
	}
	
	/**
	 * Retorna a lista de estado
	 * 
	 *  @return array
	 */
	protected function _getEstados() {
		 return array('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RO', 'RS', 'RR', 'SC', 'SE', 'SP', 'TO');
	}
	
}

?>