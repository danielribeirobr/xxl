<?php /* Smarty version 2.6.14, created on 2011-12-17 13:30:22
         compiled from C:%5CUsers%5CDaniel%5CDesktop%5Cxxl%5Csys/templates/includes/confirm.tpl */ ?>
<?php ob_start(); ?>
	<div style="text-align:center; margin-top: 100px;">
		<p><?php echo $this->_tpl_vars['message']; ?>
</p>
		<input type="button" value="yes" onclick="document.location.href='<?php echo $this->_tpl_vars['link']; ?>
'"/>
		<input type="button" value="no" onclick="history.back();"/>
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>