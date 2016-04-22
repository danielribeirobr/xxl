<?php /* Smarty version 2.6.14, created on 2011-12-17 20:57:17
         compiled from C:%5CUsers%5CDaniel%5CDesktop%5Cxxl%5Csys/templates/content/stylebook.tpl */ ?>
<?php ob_start(); ?>
	<div class="stylebook-full-image">
		<img src="images/db/<?php echo $this->_tpl_vars['images']['0']['file']; ?>
"/>
	</div>
	<div class="double-line"></div>
	<div id="carrousel" class="jcarousel-skin-tango">
		<div class="arrow left"></div>					
		<ul class="st-items">
			<?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
				<li><a href="images/db/<?php echo $this->_tpl_vars['item']['file']; ?>
"><img src="images/db/<?php echo $this->_tpl_vars['item']['thumb']; ?>
" alt="<?php echo $this->_tpl_vars['item']['title']; ?>
"/></a></li>
			<?php endforeach; endif; unset($_from); ?>												
		</ul>
		<div class="arrow right"></div>
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => 'stylebook')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>