<?php /* Smarty version 2.6.14, created on 2013-07-29 13:23:02
         compiled from /home/daniel_com/danielribeiro.com/xxl/templates/content/home.tpl */ ?>
<?php ob_start(); ?>
	<div id="home-images" class="jcarousel-skin-tango">
		<ul>
			<?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<li><img src="images/db/<?php echo $this->_tpl_vars['item']['file']; ?>
" alt="<?php echo $this->_tpl_vars['item']['title']; ?>
"/></li>
			<?php endforeach; endif; unset($_from); ?>
		</ul>			
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => 'home')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>