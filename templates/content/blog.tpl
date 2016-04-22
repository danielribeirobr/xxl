{capture name="content"}
	<div class="blog-content">
		<div id="blog-image"><a href="http://www.xxl.com.br/blog" target="_blank"><img src="images/db/{$blog.0.file}" alt="{$blog.0.title}"/></a></div>
		<div class="double-line-vertical"></div>
		<div id="vlog-image"><a href="http://www.xxl.com.br/blog/?cat=XXLTV" target="_blank"><img src="images/db/{$vlog.0.file}" alt="{$vlog.0.title}"/></a></div>
	</div>
{/capture}
{include file="content/template.tpl" page_name="blog"}