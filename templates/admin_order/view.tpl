{capture name="content"}
	<h1>Order manager</h1>

	<fieldset>
		<legend>Order details</legend>

		<label>Date:</label>
		<span class="field">{$order.date}</span>
		<br/>
		
		<label>Name:</label>
		<span class="field">{$order.name}</span>		
		<br/>
		
		<label>Phone:</label>
		<span class="field">{$order.phone}</span>
		<br/>
		
		<label>Email:</label>
		<span class="field">{$order.email}</span>
		<br/>
		
		<label>Document:</label>
		<span class="field">{$order.document}</span>
		<br/>				

		<label for="info">Items:</label>
		<span class="field">
			{foreach from=$order.items item=item}
				{$item.name}<br/>
				Color: {$item.cor}<br/>
				{if $item.size}
					Size: {$item.size}<br/>
				{/if}
				Qty: {$item.qty}<br/><br/>
			{/foreach}
		</span>
		<br/>

		<input type="button" value="back" class="submit2" onclick="history.back();"/>
	</fieldset>
{/capture}
{include file="admin/template.tpl"}