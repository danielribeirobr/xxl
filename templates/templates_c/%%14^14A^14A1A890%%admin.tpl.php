<?php /* Smarty version 2.6.14, created on 2012-02-01 21:42:02
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/admin/admin.tpl */ ?>
<?php ob_start(); ?>
	<h1>Admin area</h1>
	<p>Welcome to Admin area of <?php echo $this->_tpl_vars['appConfig']['app_name']; ?>
</p>
	<p style="height: 50px;">Click on itens on side menu.</p>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>