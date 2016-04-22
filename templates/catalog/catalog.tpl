{capture name="content"}
	{if !empty($products)}
		<ul id="catalog">
			{foreach from=$products item=item}
				<li class="item">
					<div class="image-wrapper">
						<a href="?module=catalog&action=productDetails&product_id={$item.product_id}&color_id={$item.color_id}"><img src="images/db/{$item.thumb}" alt="{$item.name}"/></a>
					</div>
					<div class="text">{$item.name}</div>
				</li>
			{/foreach}
		</ul>	
	{else}
		<div style="margin: 50px; text-align: center;">Nenhum produto cadastrado neste catálogo</div>
	{/if}
{/capture}
{include file="catalog/template.tpl" show_cart=true}