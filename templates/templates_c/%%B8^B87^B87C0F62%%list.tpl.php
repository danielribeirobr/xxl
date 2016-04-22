<?php /* Smarty version 2.6.14, created on 2012-02-02 14:39:14
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/admin_image/list.tpl */ ?>
<?php ob_start(); ?>	
	<h1>Images manager</h1>
	<input type="button" value="add new picture" onclick="document.location.href='?module=admin_image&action=imageAdd&type=<?php echo $this->_tpl_vars['form']['type']; ?>
';"/>
	<br/>
	<?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
		<li class="image-record">
			<img src="images/db/<?php echo $this->_tpl_vars['item']['thumb']; ?>
"/>
			<a href="?module=admin_image&action=imageEdit&id=<?php echo $this->_tpl_vars['item']['id']; ?>
">edit</a> <a href="?module=admin_image&action=imageDelete&id=<?php echo $this->_tpl_vars['item']['id']; ?>
">remove</a>  
		</li>
	<?php endforeach; else: ?>
		<div>No pictures found</div>
	<?php endif; unset($_from);  $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>