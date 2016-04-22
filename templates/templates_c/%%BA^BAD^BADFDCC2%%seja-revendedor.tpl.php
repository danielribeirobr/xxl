<?php /* Smarty version 2.6.14, created on 2011-12-17 21:20:15
         compiled from C:%5CUsers%5CDaniel%5CDesktop%5Cxxl%5Csys/templates/content/seja-revendedor.tpl */ ?>
<?php ob_start(); ?>
	<form action="" method="post" name="seja-revendedor-pessoa" class="ajax-post">
		<input type="hidden" name="action" value="sendInfo"/>
		<input type="hidden" name="subject" value="Requisição de revendedor"/>
		<fieldset class="seja-revendedor pessoa expand-fields">					
			<div class="header-fieldset"><img src="images/field-dados-pessoais.png"/></div>
			<div class="fields">
				<label for="nome"><img src="images/field-nome2.png"/></label>
				<input type="text" name="nome" id="nome" value="" />
				<br/>
				
				<label for="cpf"><img src="images/field-cpf.png"/></label>
				<input type="text" name="cpf" id="cpf" value="" />
				<br/>
									
				<label for="rg"><img src="images/field-rg.png"/></label>
				<input type="text" name="rg" id="rg" value="" />
				<br/>
									
				<label for="endereco"><img src="images/field-endereco.png"/></label>
				<input type="text" name="endereco" id="endereco" value="" />
				<br/>
																				
				<label for="cidade"><img src="images/field-cidade2.png"/></label>
				<input type="text" name="cidade" id="cidade" value="" />
				<br/>
									
				<label for="uf"><img src="images/field-uf.png"/></label>
				<input type="text" name="uf" id="uf" value="" />					
				<br/>
				
				<label for="cep"><img src="images/field-cep.png"/></label>
				<input type="text" name="cep" id="cep" value="" />					
				<br/>

				<label for="email"><img src="images/field-email2.png"/></label>
				<input type="text" name="email" id="email" value="" />					
				<br/>

				<label for="telefone"><img src="images/field-telefone.png"/></label>
				<input type="text" name="telefone" id="telefone" value="" />					
				<br/>

				<label for="confirme-email"><img src="images/field-email2-confirma.png"/></label>
				<input type="text" name="confirme-email" id="confirme-email" value="" />					
				<br/>							

			</div>
			<div class="button">
				<input type="image" src="images/btn-enviar.png"/>
			</div>
		</fieldset>
	</form>
	<form action="" method="post" name="seja-revendedor-empresa" class="ajax-post">
		<input type="hidden" name="action" value="sendInfo"/>
		<input type="hidden" name="subject" value="Requisição de revendedor"/>
		<fieldset class="seja-revendedor empresa expand-fields">
			<div class="fields">
				<div class="header-fieldset"><img src="images/field-razao-social.png"/></div>						
				<label for="razao-social"><img src="images/field-razao-social.png"/></label>
				<input type="text" name="razao-social" id="razao-social" value="" />
				<br/>
				
				<label for="cnpj"><img src="images/field-cnpj.png"/></label>
				<input type="text" name="cnpj" id="cnpj" value="" />
				<br/>
									
				<label for="endereco-sede"><img src="images/field-endereco-sede.png"/></label>
				<input type="text" name="endereco-sede" id="endereco-sede" value="" />
				<br/>
																				
				<label for="cidade"><img src="images/field-cidade2.png"/></label>
				<input type="text" name="cidade" id="cidade" value="" />
				<br/>
															
				<label for="uf"><img src="images/field-uf.png"/></label>
				<input type="text" name="uf" id="uf" value="" />
				<br/>
											
				<label for="email2"><img src="images/field-cep.png"/></label>
				<input type="text" name="cep" id="cep" value="" />
				<br/>						

				<label for="email2"><img src="images/field-telefone.png"/></label>
				<input type="text" name="telefone" id="telefone" value="" />
				<br/>							
			</div>
			<div class="button">
				<input type="image" src="images/btn-enviar.png"/>
			</div>
		</fieldset>
	</form>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => "seja-revendedor")));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>	