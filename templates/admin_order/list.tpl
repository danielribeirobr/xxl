{capture name="content"}
	<h1>Order list</h1>

	<table class="listing">
		<thead>
			<tr>
				<th>Date</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Document</th>
				<th colspan="2">Actions</th>
			</tr>
		</thead>
		<tbody>
			{foreach from=$orders item=item}
				<tr class="{cycle values="line1,line2"}">
					<td>{$item.date}</td>
					<td>{$item.name}</td>
					<td>{$item.email}</td>
					<td>{$item.phone}</td>
					<td>{$item.document}</td>
					<td><a href="?module=admin_order&action=open&id={$item.order_id}">details</a></td>
				</tr>
			{foreachelse}
				<tr class="not_found">
					<td colspan="10">No orders found in the database</td>
				</tr>
			{/foreach}
		</tbody>
	</table>

{/capture}
{include file="admin/template.tpl"}