<?php /* Smarty version 2.6.14, created on 2012-07-17 05:08:14
         compiled from admin/template.tpl */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/admin.css" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<title><?php echo $this->_tpl_vars['appConfig']['app_name']; ?>
 - Admin Area</title>
</head>
<body>
	<div id="div_header">
		<a href="?module=admin">Admin Area</a>
	</div>
	<div style="background: #999; height: 10px;"></div>

	<div id="div_middle">

		<?php if ($this->_tpl_vars['globals']['user']['user_id']): ?>
			<div id="div_menu">
				<?php if ($this->_tpl_vars['globals']['user']['level']['admin']): ?>
					<div class="menu">
						<ul id="menu_admin">
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin'): ?>selected<?php endif; ?>"><a href="?module=admin">Main</a></li>
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin_image' && $this->_tpl_vars['globals']['request']['type'] == 'home'): ?>selected<?php endif; ?>"><a href="?module=admin_image&type=home">Home Images</a></li>
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin_image' && $this->_tpl_vars['globals']['request']['type'] == 'stylebook'): ?>selected<?php endif; ?>"><a href="?module=admin_image&type=stylebook">StyleBook</a></li>
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin_image' && $this->_tpl_vars['globals']['request']['type'] == 'blog'): ?>selected<?php endif; ?>"><a href="?module=admin_image&type=blog">Blog Images</a></li>							
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin_image' && $this->_tpl_vars['globals']['request']['type'] == 'vlog'): ?>selected<?php endif; ?>"><a href="?module=admin_image&type=vlog">Vlog Images</a></li>
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin_dealer'): ?>selected<?php endif; ?>"><a href="?module=admin_dealer">Dealers</a></li>
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin_product'): ?>selected<?php endif; ?>"><a href="?module=admin_product">Products</a></li>
							<li class="<?php if ($this->_tpl_vars['globals']['request']['module'] == 'admin_order'): ?>selected<?php endif; ?>"><a href="?module=admin_order">Orders</a></li>														
							<li><a href="?module=login&action=loginDoLogout">Logout</a></li>
						</ul>
					</div>
				<?php endif; ?>
			</div>
		<?php endif; ?>

		<div id="div_content">
			<?php echo $this->_smarty_vars['capture']['content']; ?>

		</div>

		<div class="clear"></div>
	</div>

	<div id="div_footer">
		<p>
 			XXL - Admin Area
		</p>
	</div>

</body>
</html>