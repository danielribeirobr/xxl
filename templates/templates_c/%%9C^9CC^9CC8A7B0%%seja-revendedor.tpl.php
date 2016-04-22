<?php /* Smarty version 2.6.14, created on 2012-03-21 12:55:41
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/content/seja-revendedor.tpl */ ?>
<?php ob_start(); ?>
	<form action="" method="post" name="seja-revendedor-pessoa" class="ajax-post validate">
		<input type="hidden" name="action" value="sendInfo"/>
		<input type="hidden" name="subject" value="Requisição de revendedor"/>
		<fieldset class="seja-revendedor pessoa expand-fields">					
			<div class="header-fieldset"><img src="images/field-dados-pessoais.png"/></div>
			<div class="fields">
				<label for="f_nome"><img src="images/field-nome2.png"/></label>
				<input type="text" name="f_nome" id="f_nome" value="" class="required"/>
				<br/>
				
				<label for="f_cpf"><img src="images/field-cpf.png"/></label>
				<input type="text" name="f_cpf" id="f_cpf" value=""/>
				<br/>
									
				<label for="f_rg"><img src="images/field-rg.png"/></label>
				<input type="text" name="f_rg" id="f_rg" value="" />
				<br/>
									
				<label for="f_endereco"><img src="images/field-endereco.png"/></label>
				<input type="text" name="f_endereco" id="f_endereco" value="" />
				<br/>
																				
				<label for="f_cidade"><img src="images/field-cidade2.png"/></label>
				<input type="text" name="f_cidade" id="f_cidade" value="" class="required"/>
				<br/>
									
				<label for="f_uf"><img src="images/field-uf.png"/></label>
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
				
				<label for="f_cep"><img src="images/field-cep.png"/></label>
				<input type="text" name="f_cep" id="f_cep" value="" />					
				<br/>

				<label for="f_email"><img src="images/field-email2.png"/></label>
				<input type="text" name="f_email" id="f_email" value="" class="required email"/>					
				<br/>
				
				<label for="email2"><img src="images/field-email2-confirma.png"/></label>
				<input type="text" name="email2" id="email2" value="" class="required email"/>					
				<br/>											

				<label for="f_telefone"><img src="images/field-telefone.png"/></label>
				<input type="text" name="f_telefone" id="f_telefone" value="" class="required"/>
				<br/>
			</div>
			<div class="button">
				<input type="image" src="images/btn-enviar.png"/>
			</div>
		</fieldset>
	</form>
	<form action="" method="post" name="seja-revendedor-empresa" class="ajax-post validate">
		<input type="hidden" name="action" value="sendInfo"/>
		<input type="hidden" name="subject" value="Requisição de revendedor"/>
		<fieldset class="seja-revendedor empresa expand-fields">
			<div class="fields">
				<div class="header-fieldset"><img src="images/field-razao-social.png"/></div>						
				<label for="f_razao-social"><img src="images/field-razao-social.png"/></label>
				<input type="text" name="f_razao-social" id="f_razao-social" value="" class="required"/>
				<br/>
				
				<label for="f_cnpj"><img src="images/field-cnpj.png"/></label>
				<input type="text" name="f_cnpj" id="f_cnpj" value="" class="required cnpj"/>
				<br/>
									
				<label for="f_endereco-sede"><img src="images/field-endereco-sede.png"/></label>
				<input type="text" name="f_endereco-sede" id="f_endereco-sede" value="" class="required"/>
				<br/>
																				
				<label for="f_cidade"><img src="images/field-cidade2.png"/></label>
				<input type="text" name="f_cidade" id="f_cidade" value="" class="required"/>
				<br/>
															
				<label for="f_uf"><img src="images/field-uf.png"/></label>
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
											
				<label for="f_cep"><img src="images/field-cep.png"/></label>
				<input type="text" name="f_cep" id="f_cep" value="" />
				<br/>						

				<label for="f_telefone"><img src="images/field-telefone.png"/></label>
				<input type="text" name="f_telefone" id="f_telefone" value="" class="required"/>
				<br/>							
			</div>
			<div class="button">
				<input type="image" src="images/btn-enviar.png"/>
			</div>
		</fieldset>
	</form>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => "seja-revendedor",'form_post_info' => '1')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>	