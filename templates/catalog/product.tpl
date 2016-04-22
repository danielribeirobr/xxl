{capture name="content"}
	<div class="img-big">		
		<a href="images/db/{$product.images[0].original}" class="jqzoom" title="{$product.name}"><img src="images/db/{$product.images[0].file}" alt="{$product.name}"/></a>
	</div>
	<div class="details-1">
		<form id="frm-product" method="post" action="?module=catalog&action=addProduct">
			<input type="hidden" name="product_id" value="{$product.product_id}"/>
			<input type="hidden" name="color_id" value="{$product.color_id}"/>
			<ul class="images">
				{foreach from=$product.images item=item}
					<li><a href="images/db/{$item.file}"><img src="images/db/{$item.thumb}" alt="{$product.name}"/></a></li>
				{/foreach}
			</ul>
			<div class="cores">
				<div><img src="images/label-cores.png"/></div>
				<ul class="cores">
					{foreach from=$product.colors item=item}
						<li style="background: {$item.hex};"><a href="?module=catalog&action=productDetails&product_id={$product.product_id}&color_id={$item.color_id}"><img src="images/transparent.png" alt=""/></a></li>
					{/foreach}
				</ul>
				<div class="clear"></div>
			</div>
			{if !empty($product.sizes)}
				<div class="size">
					<div><img src="images/label-tamanhos.png"/></div>
					<select name="size" style="margin: 3px; 0; height: 28px;">
						{foreach from=$product.sizes item=item}
							<option value="{$item}"/>{$item}</option>
						{/foreach}
					</select>
				</div>
			{/if}
			<div class="qty">
				<div><img src="images/label-quantidade.png"/></div>
				<input type="text" name="qty" value="1" style="width: 25px; margin: 3px; 0;"/>
			</div>
			<input type="submit" value="Adicionar ao pedido"/>
		</form>			
	</div>
	<div class="details-2">
		<div class="product-details">{$product.description|nl2br}</div>				
	</div>
{/capture}
{include file="catalog/template.tpl" show_cart=true}