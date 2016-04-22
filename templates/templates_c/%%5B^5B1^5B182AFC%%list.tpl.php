<?php /* Smarty version 2.6.14, created on 2012-02-26 19:38:54
         compiled from C:%5CUsers%5CDaniel%5CDesktop%5Cxxl%5Csys/templates/admin_order/list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'cycle', 'C:\\Users\\Daniel\\Desktop\\xxl\\sys/templates/admin_order/list.tpl', 17, false),)), $this); ?>
<?php ob_start(); ?>
	<h1>Order list</h1>

	<table class="listing">
		<thead>
			<tr>
				<th>Date</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Document</th>
				<th colspan="2">Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php $_from = $this->_tpl_vars['orders']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<tr class="<?php echo smarty_function_cycle(array('values' => "line1,line2"), $this);?>
">
					<td><?php echo $this->_tpl_vars['item']['date']; ?>
</td>
					<td><?php echo $this->_tpl_vars['item']['name']; ?>
</td>
					<td><?php echo $this->_tpl_vars['item']['email']; ?>
</td>
					<td><?php echo $this->_tpl_vars['item']['phone']; ?>
</td>
					<td><?php echo $this->_tpl_vars['item']['document']; ?>
</td>
					<td><a href="?module=admin_order&action=open&id=<?php echo $this->_tpl_vars['item']['order_id']; ?>
">details</a></td>
				</tr>
			<?php endforeach; else: ?>
				<tr class="not_found">
					<td colspan="10">No orders found in the database</td>
				</tr>
			<?php endif; unset($_from); ?>
		</tbody>
	</table>

<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "admin/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>