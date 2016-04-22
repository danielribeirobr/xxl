<?php /* Smarty version 2.6.14, created on 2012-03-08 05:41:41
         compiled from catalog/template.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'urlencode', 'catalog/template.tpl', 27, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>The XXL Co. *55*</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link type="text/css" rel="stylesheet" href="css/global.css" />
		<link type="text/css" rel="stylesheet" href="css/catalog.css" />
		<link type="text/css" rel="stylesheet" href="css/basic_ie.css" />		
		<link type="text/css" rel="stylesheet" href="css/basic.css" />
		<link rel="stylesheet" type="text/css" href="css/jquery.jqzoom.css">			
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="js/catalog.js"></script>
		<script type="text/javascript" src="js/jquery.simplemodal.js"></script>
		<script type="text/javascript" src="js/jquery.jqzoom-core-pack.js"></script>
		<script type="text/javascript" src="js/jquery.maskedinput-1.3.min.js"></script>		
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<div class="double-line"></div>
				<div class="logo"><a href="?module=catalog"><img src="images/loja-logo.png" alt=""/></a></div>
				<div class="double-line"></div>				
				<ul class="nav-menu">
					<li class="camisetas"><a href="?module=catalog&category=Camisetas"><img src="images/btn-camisetas.png" alt=""/></a></li>
					<li class="blusas"><a href="?module=catalog&category=Blusas"><img src="images/btn-blusas.png" alt=""/></a></li>
					<li class="calcas"><a href="?module=catalog&category=<?php echo ((is_array($_tmp='Calças')) ? $this->_run_mod_handler('urlencode', true, $_tmp) : urlencode($_tmp)); ?>
"><img src="images/btn-calcas.png" alt=""/></a></li>
					<li class="bermudas"><a href="?module=catalog&category=Bermudas"><img src="images/btn-bermudas.png" alt=""/></a></li>
					<li class="bones"><a href="?module=catalog&category=<?php echo ((is_array($_tmp='Bonés')) ? $this->_run_mod_handler('urlencode', true, $_tmp) : urlencode($_tmp)); ?>
"><img src="images/btn-bones.png" alt=""/></a></li>
					<li class="acessorios"><a href="?module=catalog&category=<?php echo ((is_array($_tmp='Acessórios')) ? $this->_run_mod_handler('urlencode', true, $_tmp) : urlencode($_tmp)); ?>
"><img src="images/btn-acessorios.png" alt=""/></a></li>
				</ul>
				<div class="double-line"></div>
			</div>
			<div id="content">
				<?php echo $this->_smarty_vars['capture']['content']; ?>

				<div class="clear"></div>				
			</div>
			<?php if ($this->_tpl_vars['show_cart']): ?>
				<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "catalog/cart-items.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			<?php endif; ?>
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			<?php if ($this->_tpl_vars['show_cart'] && ! empty ( $this->_tpl_vars['cart'] )): ?>
				<div style="height: 130px;"></div>
			<?php endif; ?>
		</div>
	</body>	
</html>