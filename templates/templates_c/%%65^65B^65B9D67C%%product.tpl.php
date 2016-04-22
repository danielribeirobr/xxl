<?php /* Smarty version 2.6.14, created on 2012-03-06 13:15:25
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/catalog/product.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'nl2br', 'C:\\Documents and Settings\\92034747\\Meus documentos\\Sources\\My Projects\\xxl\\sys/templates/catalog/product.tpl', 41, false),)), $this); ?>
<?php ob_start(); ?>
	<div class="img-big">		
		<a href="images/db/<?php echo $this->_tpl_vars['product']['images'][0]['original']; ?>
" class="jqzoom" title="<?php echo $this->_tpl_vars['product']['name']; ?>
"><img src="images/db/<?php echo $this->_tpl_vars['product']['images'][0]['file']; ?>
" alt="<?php echo $this->_tpl_vars['product']['name']; ?>
"/></a>
	</div>
	<div class="details-1">
		<form id="frm-product" method="post" action="?module=catalog&action=addProduct">
			<input type="hidden" name="product_id" value="<?php echo $this->_tpl_vars['product']['product_id']; ?>
"/>
			<input type="hidden" name="color_id" value="<?php echo $this->_tpl_vars['product']['color_id']; ?>
"/>
			<ul class="images">
				<?php $_from = $this->_tpl_vars['product']['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
					<li><a href="images/db/<?php echo $this->_tpl_vars['item']['file']; ?>
"><img src="images/db/<?php echo $this->_tpl_vars['item']['thumb']; ?>
" alt="<?php echo $this->_tpl_vars['product']['name']; ?>
"/></a></li>
				<?php endforeach; endif; unset($_from); ?>
			</ul>
			<div class="cores">
				<div><img src="images/label-cores.png"/></div>
				<ul class="cores">
					<?php $_from = $this->_tpl_vars['product']['colors']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
						<li style="background: <?php echo $this->_tpl_vars['item']['hex']; ?>
;"><a href="?module=catalog&action=productDetails&product_id=<?php echo $this->_tpl_vars['product']['product_id']; ?>
&color_id=<?php echo $this->_tpl_vars['item']['color_id']; ?>
"><img src="images/transparent.png" alt=""/></a></li>
					<?php endforeach; endif; unset($_from); ?>
				</ul>
				<div class="clear"></div>
			</div>
			<?php if (! empty ( $this->_tpl_vars['product']['sizes'] )): ?>
				<div class="size">
					<div><img src="images/label-tamanhos.png"/></div>
					<select name="size" style="margin: 3px; 0; height: 28px;">
						<?php $_from = $this->_tpl_vars['product']['sizes']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
							<option value="<?php echo $this->_tpl_vars['item']; ?>
"/><?php echo $this->_tpl_vars['item']; ?>
</option>
						<?php endforeach; endif; unset($_from); ?>
					</select>
				</div>
			<?php endif; ?>
			<div class="qty">
				<div><img src="images/label-quantidade.png"/></div>
				<input type="text" name="qty" value="1" style="width: 25px; margin: 3px; 0;"/>
			</div>
			<input type="submit" value="Adicionar ao pedido"/>
		</form>			
	</div>
	<div class="details-2">
		<div class="product-details"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['description'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</div>				
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "catalog/template.tpl", 'smarty_include_vars' => array('show_cart' => true)));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>