<?php /* Smarty version 2.6.14, created on 2012-02-01 21:41:58
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/login/login.tpl */ ?>
<?php ob_start(); ?>
	<form method="post">
		<input type="hidden" name="module" id="module" value="login"/>
		<input type="hidden" name="action" id="action" value="loginDoLogin"/>
		<input type="hidden" name="redirect" id="redirect" value="<?php echo $this->_tpl_vars['redirect']; ?>
"/>
		<fieldset>
			<legend>Login</legend>

			<label for="login">Login:</label>
			<input type="text" name="login" id="login" value="<?php echo $this->_tpl_vars['login']; ?>
"/>
			<br/>

			<label for="password">Password:</label>
			<input type="password" name="password" id="password" value="<?php echo $this->_tpl_vars['password']; ?>
"/>
			<br class="clear"/>

			<?php if ($this->_tpl_vars['error']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']; ?>
</div>
			<?php endif; ?>

			<input type="submit" value="login" class="submit"/>
		</fieldset>
	</form>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>