<?php
	set_include_path(get_include_path() . PATH_SEPARATOR . realpath(dirname(__FILE__) . "/../../lib/"));
	
	require_once("ws_pais_.class.php");
	include_once("Zend/Rest/Server.php");
	
	$server = new Zend_Rest_Server();
	$server->setClass('wsPais_');
	$server->handle();
?>
