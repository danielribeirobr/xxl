{capture name="content"}
	<div class="stylebook-full-image">
		<img src="images/db/{$images.0.file}"/>
	</div>
	<div class="double-line"></div>
	<div id="carrousel" class="jcarousel-skin-tango">
		<div class="arrow left"></div>					
		<ul class="st-items">
			{foreach from=$images item=item }
				<li><a href="images/db/{$item.file}"><img src="images/db/{$item.thumb}" alt="{$item.title}"/></a></li>
			{/foreach}												
		</ul>
		<div class="arrow right"></div>
	</div>
{/capture}
{include file="content/template.tpl" page_name="stylebook"}