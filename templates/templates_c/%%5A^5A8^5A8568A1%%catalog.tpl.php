<?php /* Smarty version 2.6.14, created on 2012-03-08 12:41:18
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/catalog/catalog.tpl */ ?>
<?php ob_start(); ?>
	<?php if (! empty ( $this->_tpl_vars['products'] )): ?>
		<ul id="catalog">
			<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<li class="item">
					<div class="image-wrapper">
						<a href="?module=catalog&action=productDetails&product_id=<?php echo $this->_tpl_vars['item']['product_id']; ?>
&color_id=<?php echo $this->_tpl_vars['item']['color_id']; ?>
"><img src="images/db/<?php echo $this->_tpl_vars['item']['thumb']; ?>
" alt="<?php echo $this->_tpl_vars['item']['name']; ?>
"/></a>
					</div>
					<div class="text"><?php echo $this->_tpl_vars['item']['name']; ?>
</div>
				</li>
			<?php endforeach; endif; unset($_from); ?>
		</ul>	
	<?php else: ?>
		<div style="margin: 50px; text-align: center;">Nenhum produto cadastrado neste catálogo</div>
	<?php endif; ?>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "catalog/template.tpl", 'smarty_include_vars' => array('show_cart' => true)));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>