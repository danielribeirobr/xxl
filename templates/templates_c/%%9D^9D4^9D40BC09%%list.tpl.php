<?php /* Smarty version 2.6.14, created on 2012-03-08 10:41:05
         compiled from /home/daniel_com/danielribeiro.com/xxl/templates/admin_dealer/list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'cycle', '/home/daniel_com/danielribeiro.com/xxl/templates/admin_dealer/list.tpl', 15, false),)), $this); ?>
<?php ob_start(); ?>
	<h1>Dealers list</h1>

	<input type="button" value="add new" onclick="document.location.href='?module=admin_dealer&action=add';"/>
	<table class="listing">
		<thead>
			<tr>
				<th>Name</th>
				<th>Phone</th>
				<th colspan="2">Actions</th>
			</tr>
		</thead>
		<tbody>
			<?php $_from = $this->_tpl_vars['dealers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<tr class="<?php echo smarty_function_cycle(array('values' => "line1,line2"), $this);?>
">
					<td><?php echo $this->_tpl_vars['item']['name']; ?>
</td>
					<td><a href="?module=admin_dealer&action=open&id=<?php echo $this->_tpl_vars['item']['id']; ?>
">edit</a></td>
					<td><a href="?module=admin_dealer&action=remove&id=<?php echo $this->_tpl_vars['item']['id']; ?>
">delete</a></td>
				</tr>
			<?php endforeach; else: ?>
				<tr class="not_found">
					<td colspan="10">No dealers found in the database</td>
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