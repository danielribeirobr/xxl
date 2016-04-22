{capture name="content"}
	<div style="text-align:center; margin-top: 100px;">
		<p>{$message}</p>
		<input type="button" value="yes" onclick="document.location.href='{$link}'"/>
		<input type="button" value="no" onclick="history.back();"/>
	</div>
{/capture}
{include file="admin/template.tpl"}