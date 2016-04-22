<?php /* Smarty version 2.6.14, created on 2012-03-08 05:41:41
         compiled from catalog/cart-items.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', 'catalog/cart-items.tpl', 7, false),array('modifier', 'urlencode', 'catalog/cart-items.tpl', 24, false),)), $this); ?>
<?php if (! empty ( $this->_tpl_vars['cart'] )): ?>
	<div id="order-details-footer">
		<div class="top-shadow"></div>
		<div class="content">
			<img src="images/label-meu-pedido.png" alt=""/>
			<!-- 
			<?php if (count($this->_tpl_vars['cart']) > 8): ?>
				<div class="nav left"></div>
			<?php endif; ?>
			 -->
			<ul class="product-list">
				<?php $_from = $this->_tpl_vars['cart']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
					<li>
						<a href="?module=catalog&action=productDetails&product_id=<?php echo $this->_tpl_vars['item']['product_id']; ?>
&color_id=<?php echo $this->_tpl_vars['item']['color_id']; ?>
" title="<?php if ($this->_tpl_vars['item']['size']): ?>Tamanho: <?php echo $this->_tpl_vars['item']['size']; ?>
 <?php endif; ?>Qtd: <?php echo $this->_tpl_vars['item']['qty']; ?>
"><div class="image-wrapper"><img src="images/db/<?php echo $this->_tpl_vars['item']['product']['images'][0]['thumb']; ?>
" alt="<?php echo $this->_tpl_vars['item']['product']['name']; ?>
" class="product"/></div></a>
						<!--
						<div class="info">
							<?php if ($this->_tpl_vars['item']['size']): ?>
								Tamanho: <?php echo $this->_tpl_vars['item']['size']; ?>
<br/>
							<?php endif; ?>
							Qtd: <?php echo $this->_tpl_vars['item']['qty']; ?>

						</div>
						 -->
						<div class="action" style="text-align: center;">
							<a href="?module=catalog&action=removeProduct&product_id=<?php echo $this->_tpl_vars['item']['product_id']; ?>
&color_id=<?php echo $this->_tpl_vars['item']['color_id']; ?>
&size=<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['size'])) ? $this->_run_mod_handler('urlencode', true, $_tmp) : urlencode($_tmp)); ?>
" title="Remover"><img src="images/remove.png" alt=""/></a>
						</div>
					</li>
				<?php endforeach; endif; unset($_from); ?>
					<li class="btn-order"><a href="?module=catalog&action=checkout"><img src="images/btn-comprar.png" alt=""></a></li>
			</ul>
			<!--
			<?php if (count($this->_tpl_vars['cart']) > 8): ?>
				<div class="nav right"></div>
			<?php endif; ?>
			 -->
			<div class="clear"></div>			 
		</div>
	</div>
<?php endif; ?>	