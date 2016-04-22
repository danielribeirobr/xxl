{capture name="content"}
	<script type="text/javascript" src="js/julio.js"></script>
	<script type="text/javascript">
		var dealersStates = [];	
		{foreach from=$dealers_states item=item}
			dealersStates.push('{$item.state}');
		{/foreach}
	</script>
	<div id="conteudo-onde-encontrar">		
		<div id="julio_div" class="mapa-brasil"><img src="images/mapa-brasil.png"/></div>
		<div id="flag">
			<div class="dealers">
				<div class="info-click" style="text-align: center; font-size: 18px; font-weight: bolder; margin-top: 83px;">Clique no estado no mapa ao lado para listar</div>
				<ul>
					{foreach from=$dealers item=item}					
						<li class="state_{$item.state} dealers">
							<b>{$item.name}</b><br/>
							{if $item.phone}
								{$item.phone}<br/>
							{/if}
							{$item.address}<br/>
							{$item.city} - {$item.state}<br/><br/>						
						</li>
					{/foreach}
				</ul>				
			</div>			
		</div>
	</div>
{/capture}
{include file="content/template.tpl" page_name="seja-revendedor" load_julio="true"}	