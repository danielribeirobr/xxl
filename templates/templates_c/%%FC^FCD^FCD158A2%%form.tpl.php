<?php /* Smarty version 2.6.14, created on 2012-02-25 16:30:45
         compiled from C:%5CUsers%5CDaniel%5CDesktop%5Cxxl%5Csys/templates/admin_product/form.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'in_array', 'C:\\Users\\Daniel\\Desktop\\xxl\\sys/templates/admin_product/form.tpl', 40, false),array('function', 'cycle', 'C:\\Users\\Daniel\\Desktop\\xxl\\sys/templates/admin_product/form.tpl', 73, false),)), $this); ?>
<?php ob_start(); ?>
	<script type="text/javascript" src="templates/admin_product/admin_product.js"></script>
	<h1>Products manager</h1>

	<form method="post" class="form" enctype="multipart/form-data">
		<input type="hidden" name="module" id="module" value="admin_product"/>
		<input type="hidden" name="action" id="action" value="save"/>
		<input type="hidden" name="product_id" id="product_id" value="<?php echo $this->_tpl_vars['form']['product_id']; ?>
"/>
		<fieldset>
			<legend>Product details</legend>

			<label for="name">Name:</label>
			<input type="text" name="name" id="name" value="<?php echo $this->_tpl_vars['form']['name']; ?>
"/>
			<?php if ($this->_tpl_vars['error']['name']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['name']; ?>
</div>
			<?php endif; ?>
			<br/>
			
			<label for="category">Category:</label>
			<select name="category" id="category">
				<option value="">--select--</option>
				<?php $_from = $this->_tpl_vars['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
					<option value="<?php echo $this->_tpl_vars['item']; ?>
" <?php if ($this->_tpl_vars['form']['category'] == $this->_tpl_vars['item']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['item']; ?>
</option>
				<?php endforeach; endif; unset($_from); ?>
			</select>
			<?php if ($this->_tpl_vars['error']['category']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['category']; ?>
</div>
			<?php endif; ?>
			<br/>			
								
			<label for="info">Status:</label>
			<select name="status" id="status">
				<option value="1"<?php if ($this->_tpl_vars['form']['status'] == 1): ?>selected<?php endif; ?>>Active</option>
				<option value="0"<?php if ($this->_tpl_vars['form']['status'] == 0): ?>selected<?php endif; ?>>Inactive</option>
			</select>
			<br/>
			
			<label for="sizes">Sizes:</label>
			<?php $_from = $this->_tpl_vars['sizes']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<input type="checkbox" name="sizes[]" value="<?php echo $this->_tpl_vars['item']; ?>
" <?php if (((is_array($_tmp=$this->_tpl_vars['item'])) ? $this->_run_mod_handler('in_array', true, $_tmp, $this->_tpl_vars['form']['sizes']) : in_array($_tmp, $this->_tpl_vars['form']['sizes']))): ?>checked<?php endif; ?>/> <?php echo $this->_tpl_vars['item']; ?>

			<?php endforeach; endif; unset($_from); ?>
			<br/><br/>
			
			<label for="description">Description:</label>
			<textarea id="description" name="description"><?php echo $this->_tpl_vars['form']['description']; ?>
</textarea>
			<?php if ($this->_tpl_vars['error']['description']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['description']; ?>
</div>
			<?php endif; ?>			
			<br/>

			<label for="info">Product image:</label>
			<input type="file" name="image"/>
			<select name="color_id" id="color_id">
				<option value="">--select color--</option>
				<?php $_from = $this->_tpl_vars['colors']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
					<option value="<?php echo $this->_tpl_vars['item']['id']; ?>
"><?php echo $this->_tpl_vars['item']['cor']; ?>
</option>
				<?php endforeach; endif; unset($_from); ?>
			</select>
			<input type="button" value="Add image" name="btn_add_image"/>
			<?php if ($this->_tpl_vars['error']['image']): ?>
				<div class="error"><?php echo $this->_tpl_vars['error']['image']; ?>
</div>			
			<?php endif; ?>
			<table class="listing">
				<thead>
					<tr>
						<th>Image</th>
						<th>Color</th>
						<th colspan="2">Actions</th>
					</tr>
				</thead>
				<tbody>
					<?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
						<tr class="<?php echo smarty_function_cycle(array('values' => "line1,line2"), $this);?>
">
							<td><img src="images/db/<?php echo $this->_tpl_vars['item']['thumb']; ?>
"/></td>
							<td><?php echo $this->_tpl_vars['item']['cor']; ?>
</td>
							<td><a href="?module=admin_product&action=removeImageColor&id=<?php echo $this->_tpl_vars['form']['product_id']; ?>
&image_id=<?php echo $this->_tpl_vars['item']['id']; ?>
&color_id=<?php echo $this->_tpl_vars['item']['color_id']; ?>
">delete</a></td>
						</tr>
					<?php endforeach; else: ?>
						<tr class="not_found">
							<td colspan="10">No images found for this product</td>
						</tr>
					<?php endif; unset($_from); ?>
				</tbody>
			</table>

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