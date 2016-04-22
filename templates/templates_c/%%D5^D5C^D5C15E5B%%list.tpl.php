<?php /* Smarty version 2.6.14, created on 2011-11-23 15:30:35
         compiled from C:%5CDocuments+and+Settings%5C92034747%5Cworkspace%5Cxxl%5Csys/templates/admin_stylebook/list.tpl */ ?>
<?php ob_start(); ?>	
	<h1>Stylebook manager</h1>
	<input type="button" value="add new picture" onclick="document.location.href='?module=admin_stylebook&action=stylebookAdd';"/>
	<br/>
	<?php $_from = $this->_tpl_vars['stylebooks']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
		<div class="stylebook-record">
			<img src="images/stylebook/<?php echo $this->_tpl_vars['item']['thumb']; ?>
"/>
			<a href="?module=admin_stylebook&action=stylebookEdit&id=<?php echo $this->_tpl_vars['item']['id']; ?>
">edit</a> <a href="?module=admin_stylebook&action=stylebookDelete&id=<?php echo $this->_tpl_vars['item']['id']; ?>
">remove</a>  
		</div>
	<?php endforeach; else: ?>
		<div>No pictures found</div>
	<?php endif; unset($_from);  $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>