<?php /* Smarty version 2.6.14, created on 2012-03-20 14:51:43
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/content/onde-encontrar-list.tpl */ ?>
<ul>
	<?php $_from = $this->_tpl_vars['dealers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>					
		<li>
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