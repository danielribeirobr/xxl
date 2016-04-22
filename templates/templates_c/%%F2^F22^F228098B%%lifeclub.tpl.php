<?php /* Smarty version 2.6.14, created on 2012-03-12 12:57:33
         compiled from /home/daniel_com/danielribeiro.com/xxl/templates/content/lifeclub.tpl */ ?>
<?php ob_start(); ?>
	<form action="" method="post" name="lifeclub" class="ajax-post">
		<input type="hidden" name="action" value="sendInfo"/>
		<input type="hidden" name="subject" value="LifeClub"/>		
		<fieldset class="lifeclub expand-fields">
			<div class="fields">
				<label for="nome"><img src="images/field-nome.png"/></label>
				<input type="text" name="nome" id="nome" value="" />
				<br/>
				
				<label for="vulgo"><img src="images/field-vulgo.png"/></label>
				<input type="text" name="vulgo" id="vulgo" value="" />
				<br/>
									
				<label for="cidade"><img src="images/field-cidade.png"/></label>
				<input type="text" name="cidade" id="cidade" value="" />
				<br/>
									
				<label for="aniversario"><img src="images/field-aniversario.png"/></label>
				<input type="text" name="aniversario" id="aniversario" value="" />
				<br/>
									
				<label for="email"><img src="images/field-email.png"/></label>
				<input type="text" name="email" id="email" value="" />
				<br/>
									
				<label for="email2"><img src="images/field-confirme-seu-email.png"/></label>
				<input type="text" name="email2" id="email2" value="" />
				<br/>
									
				<label for="sexo"><img src="images/field-sexo.png"/></label>
				<input type="text" name="sexo" id="sexo" value="" />					
			</div>
			<div class="button">
				<input type="submit" value="ENVIAR" class="big-button"/>
			</div>
		</fieldset>
	</form>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => 'lifeclub','form_post_info' => '1')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>