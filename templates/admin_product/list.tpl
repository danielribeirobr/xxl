{capture name="content"}
	<h1>Products list</h1>

	<input type="button" value="add new" onclick="document.location.href='?module=admin_product&action=add';"/>
	<table class="listing">
		<thead>
			<tr>
				<th>Name</th>
				<th>Category</th>
				<th>Status</th>
				<th colspan="2">Actions</th>
			</tr>
		</thead>
		<tbody>
			{foreach from=$products item=item}
				<tr class="{cycle values="line1,line2"}">
					<td>{$item.name}</td>
					<td>{$item.category}</td>
					<td>{if $item.status == 1}Active{else}Inactive{/if}</td>
					<td><a href="?module=admin_product&action=open&id={$item.product_id}">edit</a></td>
					<td><a href="?module=admin_product&action=remove&id={$item.product_id}">delete</a></td>
				</tr>
			{foreachelse}
				<tr class="not_found">
					<td colspan="10">No products found in the database</td>
				</tr>
			{/foreach}
		</tbody>
	</table>

{/capture}
{include file="admin/template.tpl"}