{capture name="content"}
	{if !empty($cart)}
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
			{foreach from=$cart item=item}
				<li>
					<div class="img">
						<a href="?module=catalog&action=productDetails&product_id={$item.product_id}&color_id={$item.color_id}"><img src="images/db/{$item.product.images[0].thumb}" alt="{$item.product.name}" class="product"/></a>
					</div>
					<div class="info">
						<span class="label">Cor: </span><span class="v">{$item.product.images[0].cor}</span><br/>
						{if $item.size}
							<span class="label">Tamanho: </span><span class="v">{$item.size}</span><br/>
						{/if}					
						<span class="label">Qtd: </span><span class="v">{$item.qty}</span><br/>
					</div>
					<div class="clear"></div>
				</li>
			{/foreach}
		</ul>
	{else}
		<div style="margin: 50px; text-align: center;">Nenhum produto adicionado ao pedido</div>
	{/if}
{/capture}
{include file="catalog/template.tpl"}