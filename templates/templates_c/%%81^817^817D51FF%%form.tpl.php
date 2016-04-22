<?php /* Smarty version 2.6.14, created on 2011-11-23 15:52:37
         compiled from C:%5CDocuments+and+Settings%5C92034747%5Cworkspace%5Cxxl%5Csys/templates/admin_stylebook/form.tpl */ ?>
<?php ob_start(); ?>
	<h1>Stylebook manager</h1>
	<form method="post" class="form" enctype="multipart/form-data">
		<input type="hidden" name="module" id="module" value="admin_stylebook"/>
		<input type="hidden" name="action" id="action" value="stylebookSave"/>
		<input type="hidden" name="id" id="id" value="<?php echo $this->_tpl_vars['form']['id']; ?>
"/>
		<fieldset>
			<legend>Style book picture</legend>

			<label for="title">Title:</label>
			<input type="text" name="title" id="title" value="<?php echo $this->_tpl_vars['form']['title']; ?>
"/>
			<?php if ($this->_tpl_vars['error']['title']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['title']; ?>
</div>
			<?php endif; ?>
			<br/>

			<label for="image">Image file:</label>
			<input type="file" name="image" style="width: 220px;"/>
			<?php if ($this->_tpl_vars['error']['image']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['image']; ?>
</div>
			<?php endif; ?>
			<br/>
			
			<input type="submit" value="Save" class="submit"/>
			<input type="button" value="Cancel" class="submit2" onclick="document.location.href='?module=admin_stylebook';"/>
		</fieldset>
	</form>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>