{capture name="content"}
	<div style="text-align: center; margin-top: 100px;">
		<p>{$message}</p>
		<input type="button" value="back" onclick="document.location.href='{$link}';"/>
	</div>
{/capture}
{include file="admin/template.tpl"}