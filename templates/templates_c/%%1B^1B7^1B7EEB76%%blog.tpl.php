<?php /* Smarty version 2.6.14, created on 2012-03-21 11:43:01
         compiled from C:%5CDocuments+and+Settings%5C92034747%5CMeus+documentos%5CSources%5CMy+Projects%5Cxxl%5Csys/templates/content/blog.tpl */ ?>
<?php ob_start(); ?>
	<div class="blog-content">
		<div id="blog-image"><a href="http://www.xxl.com.br/blog" target="_blank"><img src="images/db/<?php echo $this->_tpl_vars['blog']['0']['file']; ?>
" alt="<?php echo $this->_tpl_vars['blog']['0']['title']; ?>
"/></a></div>
		<div class="double-line-vertical"></div>
		<div id="vlog-image"><a href="http://www.xxl.com.br/blog/?cat=XXLTV" target="_blank"><img src="images/db/<?php echo $this->_tpl_vars['vlog']['0']['file']; ?>
" alt="<?php echo $this->_tpl_vars['vlog']['0']['title']; ?>
"/></a></div>
	</div>
<?php $this->_smarty_vars['capture']['content'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "content/template.tpl", 'smarty_include_vars' => array('page_name' => 'blog')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>