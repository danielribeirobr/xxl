{capture name="content"}
	<form action="" method="post" name="contato" class="ajax-post validate">
		<input type="hidden" name="action" value="sendInfo"/>
		<input type="hidden" name="subject" value="Contato pelo site"/>		
		<fieldset class="contato expand-fields">
			<div class="fields">
				<label for="f_nome"><img src="images/field-nome.png"/></label>
				<input type="text" name="f_nome" id="f_nome" value="" class="required"/>
				<br/>
				
				<label for="f_vulgo"><img src="images/field-vulgo.png"/></label>
				<input type="text" name="f_vulgo" id="f_vulgo" value="" class="required"/>
				<br/>
									
				<label for="f_cidade"><img src="images/field-cidade.png"/></label>
				<input type="text" name="f_cidade" id="f_cidade" value="" class="required"/>
				<br/>
				
				<label for="f_estado"><img src="images/field-estado.png"/></label>
				<select id="f_estado" name="f_estado" class="required">
					{foreach from=$estados item=item}
						<option value="{$item}" {if $item == 'SP'}selected{/if}>{$item}</option>					
					{/foreach}
				</select>
				<br/>				
									
				<label for="f_aniversario"><img src="images/field-aniversario.png"/></label>
				<input type="text" name="f_aniversario" id="f_aniversario" value="" />
				<br/>
									
				<label for="f_email"><img src="images/field-email.png"/></label>
				<input type="text" name="f_email" id="f_email" value="" class="required email"/>
				<br/>
									
				<label for="email2"><img src="images/field-confirme-seu-email.png"/></label>
				<input type="text" name="email2" id="f_email2" value="" class="required email"/>
				<br/>
									
				<label for="f_sexo"><img src="images/field-sexo.png"/></label>
				<select id="f_sexo" name="f_sexo" class="required">
					<option value="Masculino">Masculino</option>
					<option value="Feminino">Feminino</option>
				</select>
				<br/>
				
				<label for="f_mensagem"><img src="images/field-mensagem.png"/></label>
				<textarea name="f_mensagem" id="f_mensagem" class="required"></textarea>
				<br/>
			</div>
			<div class="button">
				<input type="image" src="images/btn-enviar.png"/>
			</div>
		</fieldset>
	</form>
{/capture}
{include file="content/template.tpl" page_name="contato" form_post_info="1"}	