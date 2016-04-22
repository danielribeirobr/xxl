{capture name="content"}
	<script type="text/javascript" src="templates/admin_product/admin_product.js"></script>
	<h1>Products manager</h1>

	<form method="post" class="form" enctype="multipart/form-data">
		<input type="hidden" name="module" id="module" value="admin_product"/>
		<input type="hidden" name="action" id="action" value="save"/>
		<input type="hidden" name="product_id" id="product_id" value="{$form.product_id}"/>
		<fieldset>
			<legend>Product details</legend>

			<label for="name">Name:</label>
			<input type="text" name="name" id="name" value="{$form.name}"/>
			{if $error.name}
				<div class="error">{$error.name}</div>
			{/if}
			<br/>
			
			<label for="category">Category:</label>
			<select name="category" id="category">
				<option value="">--select--</option>
				{foreach from=$categories item=item}
					<option value="{$item}" {if $form.category == $item}selected{/if}>{$item}</option>
				{/foreach}
			</select>
			{if $error.category}
				<div class="error">{$error.category}</div>
			{/if}
			<br/>			
								
			<label for="info">Status:</label>
			<select name="status" id="status">
				<option value="1"{if $form.status == 1}selected{/if}>Active</option>
				<option value="0"{if $form.status == 0}selected{/if}>Inactive</option>
			</select>
			<br/>
			
			<label for="sizes">Sizes:</label>
			{foreach from=$sizes item=item}
				<input type="checkbox" name="sizes[]" value="{$item}" {if $item|in_array:$form.sizes}checked{/if}/> {$item}
			{/foreach}
			<br/><br/>
			
			<label for="description">Description:</label>
			<textarea id="description" name="description">{$form.description}</textarea>
			{if $error.description}
				<div class="error">{$error.description}</div>
			{/if}			
			<br/>

			<label for="info">Product image:</label>
			<input type="file" name="image"/>
			<select name="color_id" id="color_id">
				<option value="">--select color--</option>
				{foreach from=$colors item=item}
					<option value="{$item.id}" style="background-color: {$item.hex}">{$item.cor}</option>
				{/foreach}
			</select>
			
			<input type="checkbox" value="1" name="front" id="front"/> Front image
			
			<input type="button" value="Add image" name="btn_add_image"/>
			{if $error.image}
				<div class="error">{$error.image}</div>			
			{/if}
			<table class="listing">
				<thead>
					<tr>
						<th>Image</th>
						<th>Color</th>
						<th>Front image</th>
						<th colspan="2">Actions</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$images item=item}
						<tr class="{cycle values="line1,line2"}">
							<td><img src="images/db/{$item.thumb}"/></td>
							<td>{$item.cor}</td>
							<td>{if $item.front}Yes{else}No{/if}</td>
							<td><a href="?module=admin_product&action=removeImageColor&id={$form.product_id}&image_id={$item.id}&color_id={$item.color_id}">delete</a></td>
						</tr>
					{foreachelse}
						<tr class="not_found">
							<td colspan="10">No images found for this product</td>
						</tr>
					{/foreach}
				</tbody>
			</table>

			<input type="submit" value="submit" class="submit"/>
			<input type="button" value="cancel" class="submit2" onclick="history.back();"/>
		</fieldset>
	</form>

{/capture}
{include file="admin/template.tpl"}