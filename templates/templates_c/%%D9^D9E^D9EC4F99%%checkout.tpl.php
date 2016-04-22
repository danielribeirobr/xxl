<?php /* Smarty version 2.6.14, created on 2012-03-21 12:25:08
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/catalog/checkout.tpl */ ?>
<?php ob_start(); ?>
	<?php if (! empty ( $this->_tpl_vars['cart'] )): ?>
		<div class="basic-modal-content" id="msg-success">
			<h3>Pedido enviado</h3>
			<p>Seu pedido foi enviado com sucesso. Em breve entraremos em contato.</p>
		</div>
		<div class="basic-modal-content" id="msg-fail">
			<h3>Erro</h3>
			<p>Erro ao enviar as informações. Tente novamente mais tarde</p>
		</div>	
		<form method="post" action="?module=catalog&action=checkout" name="checkout">
			<input type="hidden" name="doCheckout" value="1"/>
			<fieldset>
				<label for="f_nome"><img src="images/label-pedido-nome.png" alt=""/></label>
				<input type="text" name="f_nome" id="f_nome" class="required"/>
				<br/>
				
				<label for="f_email"><img src="images/label-pedido-email.png" alt=""/></label>
				<input type="text" name="f_email" id="f_email" class="required email"/>
				<br/>
		
				<label for="email2"><img src="images/label-pedido-email2.png" alt=""/></label>
				<input type="text" name="email2" id="email2" class="required email"/>
				<br/>
		
				<label for="f_telefone"><img src="images/label-pedido-telefone.png" alt=""/></label>
				<input type="text" name="f_telefone" id="f_telefone" class="required"/>
				<br/>
				
				<label for="f_cnpj"><img src="images/label-pedido-cnpj.png" alt=""/></label>
				<input type="text" name="f_cnpj" id="f_cnpj" class="required cnpj"/>
				<br/>

				<div style="text-align: center;">
					<input type="image" src="images/btn-enviar-pedido.png" alt="" class="submit"/>
				</div>				
			</fieldset>
		</form>
		<div style="margin-top: 10px;"><img src="images/title-pedido.png" alt=""/></div>
		<ul class="product-list-order" style="margin-top: 10px;">
			<?php $_from = $this->_tpl_vars['cart']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<li>
					<div class="img">
						<a href="?module=catalog&action=productDetails&product_id=<?php echo $this->_tpl_vars['item']['product_id']; ?>
&color_id=<?php echo $this->_tpl_vars['item']['color_id']; ?>
"><img src="images/db/<?php echo $this->_tpl_vars['item']['product']['images'][0]['thumb']; ?>
" alt="<?php echo $this->_tpl_vars['item']['product']['name']; ?>
" class="product"/></a>
					</div>
					<div class="info">
						<span class="label">Cor: </span><span class="v"><?php echo $this->_tpl_vars['item']['product']['images'][0]['cor']; ?>
</span><br/>
						<?php if ($this->_tpl_vars['item']['size']): ?>
							<span class="label">Tamanho: </span><span class="v"><?php echo $this->_tpl_vars['item']['size']; ?>
</span><br/>
						<?php endif; ?>					
						<span class="label">Qtd: </span><span class="v"><?php echo $this->_tpl_vars['item']['qty']; ?>
</span><br/>
					</div>
					<div class="clear"></div>
				</li>
			<?php endforeach; endif; unset($_from); ?>
		</ul>
	<?php else: ?>
		<div style="margin: 50px; text-align: center;">Nenhum produto adicionado ao pedido</div>
	<?php endif; ?>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "catalog/template.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>