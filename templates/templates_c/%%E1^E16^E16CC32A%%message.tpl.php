<?php /* Smarty version 2.6.14, created on 2011-11-23 15:53:04
         compiled from C:%5CDocuments+and+Settings%5C92034747%5Cworkspace%5Cxxl%5Csys/templates/includes/message.tpl */ ?>
<?php ob_start(); ?>
	<div style="text-align: center; margin-top: 100px;">
		<p><?php echo $this->_tpl_vars['message']; ?>
</p>
		<input type="button" value="back" onclick="document.location.href='<?php echo $this->_tpl_vars['link']; ?>
';"/>
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>