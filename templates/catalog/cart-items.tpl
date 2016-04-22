{if !empty($cart)}
	<div id="order-details-footer">
		<div class="top-shadow"></div>
		<div class="content">
			<img src="images/label-meu-pedido.png" alt=""/>
			<!-- 
			{if $cart|@count > 8}
				<div class="nav left"></div>
			{/if}
			 -->
			<ul class="product-list">
				{foreach from=$cart item=item}
					<li>
						<a href="?module=catalog&action=productDetails&product_id={$item.product_id}&color_id={$item.color_id}" title="{if $item.size}Tamanho: {$item.size} {/if}Qtd: {$item.qty}"><div class="image-wrapper"><img src="images/db/{$item.product.images[0].thumb}" alt="{$item.product.name}" class="product"/></div></a>
						<!--
						<div class="info">
							{if $item.size}
								Tamanho: {$item.size}<br/>
							{/if}
							Qtd: {$item.qty}
						</div>
						 -->
						<div class="action" style="text-align: center;">
							<a href="?module=catalog&action=removeProduct&product_id={$item.product_id}&color_id={$item.color_id}&size={$item.size|urlencode}" title="Remover"><img src="images/remove.png" alt=""/></a>
						</div>
					</li>
				{/foreach}
					<li class="btn-order"><a href="?module=catalog&action=checkout"><img src="images/btn-comprar.png" alt=""></a></li>
			</ul>
			<!--
			{if $cart|@count > 8}
				<div class="nav right"></div>
			{/if}
			 -->
			<div class="clear"></div>			 
		</div>
	</div>
{/if}	