<?php /* Smarty version 2.6.14, created on 2012-03-20 11:43:14
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/admin_order/view.tpl */ ?>
<?php ob_start(); ?>
	<h1>Order manager</h1>

	<fieldset>
		<legend>Order details</legend>

		<label>Date:</label>
		<span class="field"><?php echo $this->_tpl_vars['order']['date']; ?>
</span>
		<br/>
		
		<label>Name:</label>
		<span class="field"><?php echo $this->_tpl_vars['order']['name']; ?>
</span>		
		<br/>
		
		<label>Phone:</label>
		<span class="field"><?php echo $this->_tpl_vars['order']['phone']; ?>
</span>
		<br/>
		
		<label>Email:</label>
		<span class="field"><?php echo $this->_tpl_vars['order']['email']; ?>
</span>
		<br/>
		
		<label>Document:</label>
		<span class="field"><?php echo $this->_tpl_vars['order']['document']; ?>
</span>
		<br/>				

		<label for="info">Items:</label>
		<span class="field">
			<?php $_from = $this->_tpl_vars['order']['items']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<?php echo $this->_tpl_vars['item']['name']; ?>
<br/>
				Color: <?php echo $this->_tpl_vars['item']['cor']; ?>
<br/>
				<?php if ($this->_tpl_vars['item']['size']): ?>
					Size: <?php echo $this->_tpl_vars['item']['size']; ?>
<br/>
				<?php endif; ?>
				Qty: <?php echo $this->_tpl_vars['item']['qty']; ?>
<br/><br/>
			<?php endforeach; endif; unset($_from); ?>
		</span>
		<br/>

		<input type="button" value="back" class="submit2" onclick="history.back();"/>
	</fieldset>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>