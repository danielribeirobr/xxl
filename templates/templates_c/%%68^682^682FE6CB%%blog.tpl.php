<?php /* Smarty version 2.6.14, created on 2011-12-17 20:57:22
         compiled from C:%5CUsers%5CDaniel%5CDesktop%5Cxxl%5Csys/templates/content/blog.tpl */ ?>
<?php ob_start(); ?>
	<div class="blog-content">
		<div id="blog-image"><a href="#" target="_blank"><img src="images/db/<?php echo $this->_tpl_vars['blog']['0']['file']; ?>
" alt="<?php echo $this->_tpl_vars['blog']['0']['title']; ?>
"/></a></div>
		<div class="double-line-vertical"></div>
		<div id="vlog-image"><a href="#" target="_blank"></a><img src="images/db/<?php echo $this->_tpl_vars['vlog']['0']['file']; ?>
" alt="<?php echo $this->_tpl_vars['vlog']['0']['title']; ?>
"/></a></div>
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => 'blog')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>