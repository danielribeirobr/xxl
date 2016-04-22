<?php /* Smarty version 2.6.14, created on 2012-03-21 12:08:06
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/content/onde-encontrar.tpl */ ?>
<?php ob_start(); ?>
	<script type="text/javascript" src="js/julio.js"></script>
	<script type="text/javascript">
		var dealersStates = [];	
		<?php $_from = $this->_tpl_vars['dealers_states']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
			dealersStates.push('<?php echo $this->_tpl_vars['item']['state']; ?>
');
		<?php endforeach; endif; unset($_from); ?>
	</script>
	<div id="conteudo-onde-encontrar">		
		<div id="julio_div" class="mapa-brasil"><img src="images/mapa-brasil.png"/></div>
		<div id="flag">
			<div class="dealers">
				<div class="info-click" style="text-align: center; font-size: 18px; font-weight: bolder; margin-top: 83px;">Clique no estado no mapa ao lado para listar</div>
				<ul>
					<?php $_from = $this->_tpl_vars['dealers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>					
						<li class="state_<?php echo $this->_tpl_vars['item']['state']; ?>
 dealers">
							<b><?php echo $this->_tpl_vars['item']['name']; ?>
</b><br/>
							<?php if ($this->_tpl_vars['item']['phone']): ?>
								<?php echo $this->_tpl_vars['item']['phone']; ?>
<br/>
							<?php endif; ?>
							<?php echo $this->_tpl_vars['item']['address']; ?>
<br/>
							<?php echo $this->_tpl_vars['item']['city']; ?>
 - <?php echo $this->_tpl_vars['item']['state']; ?>
<br/><br/>						
						</li>
					<?php endforeach; endif; unset($_from); ?>
				</ul>				
			</div>			
		</div>
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean();  $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => "seja-revendedor",'load_julio' => 'true')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>	