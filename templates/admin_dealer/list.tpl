{capture name="content"}
	<h1>Dealers list</h1>

	<input type="button" value="add new" onclick="document.location.href='?module=admin_dealer&action=add';"/>
	<table class="listing">
		<thead>
			<tr>
				<th>Name</th>
				<th>Phone</th>
				<th colspan="2">Actions</th>
			</tr>
		</thead>
		<tbody>
			{foreach from=$dealers item=item}
				<tr class="{cycle values="line1,line2"}">
					<td>{$item.name}</td>
					<td><a href="?module=admin_dealer&action=open&id={$item.id}">edit</a></td>
					<td><a href="?module=admin_dealer&action=remove&id={$item.id}">delete</a></td>
				</tr>
			{foreachelse}
				<tr class="not_found">
					<td colspan="10">No dealers found in the database</td>
				</tr>
			{/foreach}
		</tbody>
	</table>

{/capture}
{include file="admin/template.tpl"}