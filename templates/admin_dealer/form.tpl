{capture name="content"}
	<h1>Dealers manager</h1>

	<form method="post" class="form">
		<input type="hidden" name="module" id="module" value="admin_dealer"/>
		<input type="hidden" name="action" id="action" value="save"/>
		<input type="hidden" name="id" id="id" value="{$form.id}"/>
		<fieldset>
			<legend>Dealer details</legend>

			<label for="name">Name:</label>
			<input type="text" name="name" id="name" value="{$form.name}"/>
			{if $error.name}
				<div class="error">{$error.name}</div>
			{/if}
			<br/>
			
			<label for="phone">Phone:</label>
			<input type="text" name="phone" id="phone" value="{$form.phone}"/>
			{if $error.phone}
				<div class="error">{$error.phone}</div>
			{/if}
			<br/>			

			<label for="phone">Address:</label>
			<textarea id="address" name="address">{$form.address}</textarea>
			{if $error.address}
				<div class="error">{$error.address}</div>
			{/if}
			<br/>
			
			<label for="phone">City:</label>
			<input type="text" name="city" id="city" value="{$form.city}"/>
			{if $error.city}
				<div class="error">{$error.city}</div>
			{/if}
			<br/>
			
			<label for="state">State:</label>
			<select name="state" id="state">
				{foreach from=$states item=item}
					<option value="{$item}" {if $item == $form.state}selected{/if}>{$item}</option>				
				{/foreach}
			</select>
			{if $error.state}
				<div class="error">{$error.state}</div>
			{/if}
			<br/>
			
			<label for="info">Other information:</label>
			<textarea id="info" name="info">{$form.info}</textarea>
			{if $error.info}
				<div class="error">{$error.info}</div>
			{/if}
			<br/>			

			<input type="submit" value="submit" class="submit"/>
			<input type="button" value="cancel" class="submit2" onclick="history.back();"/>
		</fieldset>
	</form>

{/capture}
{include file="admin/template.tpl"}