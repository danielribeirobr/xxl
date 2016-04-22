{capture name="content"}
	<div id="home-images" class="jcarousel-skin-tango">
		<ul>
			{foreach from=$images item=item}
				<li><img src="images/db/{$item.file}" alt="{$item.title}"/></li>
			{/foreach}
		</ul>			
	</div>
{/capture}
{include file="content/template.tpl" page_name="home"}