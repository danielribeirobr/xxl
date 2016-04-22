{capture name="content"}	
	<h1>Images manager</h1>
	<input type="button" value="add new picture" onclick="document.location.href='?module=admin_image&action=imageAdd&type={$form.type}';"/>
	<br/>
	{foreach from=$images item=item}
		<li class="image-record">
			<img src="images/db/{$item.thumb}"/>
			<a href="?module=admin_image&action=imageEdit&id={$item.id}">edit</a> <a href="?module=admin_image&action=imageDelete&id={$item.id}">remove</a>  
		</li>
	{foreachelse}
		<div>No pictures found</div>
	{/foreach}
{/capture}
{include file="admin/template.tpl"}