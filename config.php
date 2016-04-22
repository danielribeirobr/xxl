<?php

/**
 * Configuration file
 * @author Daniel Ribeiro <daniel@danielribeiro.com>
 */

// General configuration
$appConfig['app_name'] = 'XXL Site';
$appConfig['app_email'] = 'daniel@danielribeiro.com';

// Path configuration (in most of the cases the system get this values alone)
$appConfig['url'] = 'http://' . $_SERVER['SERVER_NAME']  . dirname($_SERVER['SCRIPT_NAME']) . '/';
$appConfig['base'] = dirname(__FILE__) . '/';
$appConfig['template_dir'] = $appConfig['base'] . 'templates/';

// Include path
ini_set('include_path', ini_get('include_path') . PATH_SEPARATOR . $appConfig['base'] . 'includes/');

// Include the PEAR path directory
ini_set('include_path', ini_get('include_path') . PATH_SEPARATOR . $appConfig['base'] . 'includes/pear/php/');

// Errorset
error_reporting(E_ALL & ~(E_STRICT|E_NOTICE|E_DEPRECATED));

// Database configuration
$appConfig['dsn'] = array(
    'phptype'  => 'mysql',
    'username' => 'xxxxx',
    'password' => 'xxxxx',
    'hostspec' => 'xxxxx',
    'database' => 'xxl_site'
);

function print_rr($info, $die = true)
{
	echo '<pre>';
	print_r($info);
	if( $die )
		die;
	echo '</pre>';
}

?>
