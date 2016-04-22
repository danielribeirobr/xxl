<?php /* Smarty version 2.6.14, created on 2013-07-29 13:23:02
         compiled from content/template.tpl */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>The XXL Co. *55*</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link type="text/css" rel="stylesheet" href="css/global.css" />
		<link type="text/css" rel="stylesheet" href="css/content.css" />
		<link type="text/css" rel="stylesheet" href="css/basic_ie.css" />		
		<link type="text/css" rel="stylesheet" href="css/basic.css" />	
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.validate.min.js"></script>		
		<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
		<script type="text/javascript" src="js/jquery.simplemodal.js"></script>
		<script type="text/javascript" src="js/jquery.maskedinput-1.3.min.js"></script>
		<script type="text/javascript" src="js/global.js"></script>		
		<script type="text/javascript" src="js/site.js"></script>
		<?php if ($this->_tpl_vars['load_julio']): ?>
			<script type="text/javascript" src="js/swfobject.js"></script>
			<script type="text/javascript" src="js/julio.js"></script>
		<?php endif; ?>
	</head>
	<body>
		<?php if (form_post_info): ?>
			<div class="basic-modal-content" id="msg-success">
				<h3>Informações enviadas</h3>
				<p>Suas informações foram enviadas com sucesso. Em breve entraremos em contato.</p>
			</div>
			<div class="basic-modal-content" id="msg-fail">
				<h3>Erro</h3>
				<p>Erro ao enviar as informações. Tente novamente mais tarde</p>
			</div>
		<?php endif; ?>
		<div id="wrapper">
			<div id="header" class="<?php echo $this->_tpl_vars['page_name']; ?>
"></div>
			<ul class="navigation-menu">
				<li class="shop"><a href="?module=catalog"><img src="images/btn-shop.png" alt=""/></a></li>
				<li class="stylebook"><a href="?page=stylebook"><img src="images/btn-stylebook.png" alt=""/></a></li>
				<li class="blog"><a href="?page=blog"><img src="images/btn-blog.png" alt=""/></a></li>
				<li class="lifeclub"><a href="?page=lifeclub"><img src="images/btn-lifeclub.png" alt=""/></a></li>
				<li class="contato"><a href="?page=contato"><img src="images/btn-contato.png" alt=""/></a></li>
				<li class="seja-revendedor"><a href="?page=seja-revendedor"><img src="images/btn-revendedor.png" alt=""/></a></li>
				<li class="onde-encontrar"><a href="?page=onde-encontrar"><img src="images/btn-onde-encontrar.png" alt=""/></a></li>
			</ul>		
			<?php echo $this->_smarty_vars['capture']['content']; ?>

			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>						
		</div>
	</body>
</html>