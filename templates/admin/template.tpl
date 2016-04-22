<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/admin.css" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<title>{$appConfig.app_name} - Admin Area</title>
</head>
<body>
	<div id="div_header">
		<a href="?module=admin">Admin Area</a>
	</div>
	<div style="background: #999; height: 10px;"></div>

	<div id="div_middle">

		{if $globals.user.user_id}
			<div id="div_menu">
				{if $globals.user.level.admin}
					<div class="menu">
						<ul id="menu_admin">
							<li class="{if $globals.request.module == 'admin'}selected{/if}"><a href="?module=admin">Main</a></li>
							<li class="{if $globals.request.module == 'admin_image' and $globals.request.type == 'home'}selected{/if}"><a href="?module=admin_image&type=home">Home Images</a></li>
							<li class="{if $globals.request.module == 'admin_image' and $globals.request.type == 'stylebook'}selected{/if}"><a href="?module=admin_image&type=stylebook">StyleBook</a></li>
							<li class="{if $globals.request.module == 'admin_image' and $globals.request.type == 'blog'}selected{/if}"><a href="?module=admin_image&type=blog">Blog Images</a></li>							
							<li class="{if $globals.request.module == 'admin_image' and $globals.request.type == 'vlog'}selected{/if}"><a href="?module=admin_image&type=vlog">Vlog Images</a></li>
							<li class="{if $globals.request.module == 'admin_dealer'}selected{/if}"><a href="?module=admin_dealer">Dealers</a></li>
							<li class="{if $globals.request.module == 'admin_product'}selected{/if}"><a href="?module=admin_product">Products</a></li>
							<li class="{if $globals.request.module == 'admin_order'}selected{/if}"><a href="?module=admin_order">Orders</a></li>														
							<li><a href="?module=login&action=loginDoLogout">Logout</a></li>
						</ul>
					</div>
				{/if}
			</div>
		{/if}

		<div id="div_content">
			{$smarty.capture.content}
		</div>

		<div class="clear"></div>
	</div>

	<div id="div_footer">
		<p>
 			XXL - Admin Area
		</p>
	</div>

</body>
</html>