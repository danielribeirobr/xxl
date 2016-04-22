<?php /* Smarty version 2.6.14, created on 2012-03-12 12:20:26
         compiled from /home/daniel_com/danielribeiro.com/xxl/templates/admin_dealer/form.tpl */ ?>
<?php ob_start(); ?>
	<h1>Dealers manager</h1>

	<form method="post" class="form">
		<input type="hidden" name="module" id="module" value="admin_dealer"/>
		<input type="hidden" name="action" id="action" value="save"/>
		<input type="hidden" name="id" id="id" value="<?php echo $this->_tpl_vars['form']['id']; ?>
"/>
		<fieldset>
			<legend>Dealer details</legend>

			<label for="name">Name:</label>
			<input type="text" name="name" id="name" value="<?php echo $this->_tpl_vars['form']['name']; ?>
"/>
			<?php if ($this->_tpl_vars['error']['name']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['name']; ?>
</div>
			<?php endif; ?>
			<br/>
			
			<label for="phone">Phone:</label>
			<input type="text" name="phone" id="phone" value="<?php echo $this->_tpl_vars['form']['phone']; ?>
"/>
			<?php if ($this->_tpl_vars['error']['phone']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['phone']; ?>
</div>
			<?php endif; ?>
			<br/>			

			<label for="phone">Address:</label>
			<textarea id="address" name="address"><?php echo $this->_tpl_vars['form']['address']; ?>
</textarea>
			<?php if ($this->_tpl_vars['error']['address']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['address']; ?>
</div>
			<?php endif; ?>
			<br/>
			
			<label for="phone">City:</label>
			<input type="text" name="city" id="city" value="<?php echo $this->_tpl_vars['form']['city']; ?>
"/>
			<?php if ($this->_tpl_vars['error']['city']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['city']; ?>
</div>
			<?php endif; ?>
			<br/>
			
			<label for="state">State:</label>
			<select name="state" id="state">
				<?php $_from = $this->_tpl_vars['states']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
					<option value="<?php echo $this->_tpl_vars['item']; ?>
" <?php if ($this->_tpl_vars['item'] == $this->_tpl_vars['form']['state']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['item']; ?>
</option>				
				<?php endforeach; endif; unset($_from); ?>
			</select>
			<?php if ($this->_tpl_vars['error']['state']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['state']; ?>
</div>
			<?php endif; ?>
			<br/>
			
			<label for="info">Other information:</label>
			<textarea id="info" name="info"><?php echo $this->_tpl_vars['form']['info']; ?>
</textarea>
			<?php if ($this->_tpl_vars['error']['info']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['info']; ?>
</div>
			<?php endif; ?>
			<br/>			

			<input type="submit" value="submit" class="submit"/>
			<input type="button" value="cancel" class="submit2" onclick="history.back();"/>
		</fieldset>
	</form>

<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>