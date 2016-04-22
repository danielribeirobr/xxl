{capture name="content"}
	<h1>Images manager</h1>
	<form method="post" class="form" enctype="multipart/form-data">
		<input type="hidden" name="module" id="module" value="admin_image"/>
		<input type="hidden" name="action" id="action" value="imageSave"/>
		<input type="hidden" name="id" id="id" value="{$form.id}"/>
		<input type="hidden" name="type" id="type" value="{$form.type}"/>		
		<fieldset>
			<legend>Image information</legend>

			<label for="title">Title:</label>
			<input type="text" name="title" id="title" value="{$form.title}"/>
			{if $error.title}
				<div class="error">{$error.title}</div>
			{/if}
			<br/>

			<label for="image">Image file:</label>
			<input type="file" name="image" style="width: 220px;"/>
			{if $error.image}
				<div class="error">{$error.image}</div>
			{/if}
			<br/>
			
			<input type="submit" value="Save" class="submit"/>
			<input type="button" value="Cancel" class="submit2" onclick="document.location.href='?module=admin_image&type={$form.type}';"/>
		</fieldset>
	</form>
{/capture}
{include file="admin/template.tpl"}