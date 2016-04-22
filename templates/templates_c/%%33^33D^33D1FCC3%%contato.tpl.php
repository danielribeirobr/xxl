<?php /* Smarty version 2.6.14, created on 2012-03-21 12:37:02
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/content/contato.tpl */ ?>
<?php ob_start(); ?>
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
					<?php $_from = $this->_tpl_vars['estados']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
						<option value="<?php echo $this->_tpl_vars['item']; ?>
" <?php if ($this->_tpl_vars['item'] == 'SP'): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['item']; ?>
</option>					
					<?php endforeach; endif; unset($_from); ?>
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
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => 'contato','form_post_info' => '1')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>	