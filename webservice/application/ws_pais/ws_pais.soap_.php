<?php
	set_include_path(get_include_path() . PATH_SEPARATOR . realpath(dirname(__FILE__) . "/../../lib/"));
	
	require_once("ws_pais_.class.php");
	
	if (strtolower($_SERVER['QUERY_STRING']) == 'wsdl') {
		require_once('Zend/Soap/AutoDiscover.php');
		$wsdl = new Zend_Soap_AutoDiscover();
		$wsdl->setClass('wsPais_');
		$wsdl->handle();
	}
	else {
		$wsdl_url = sprintf('http://%s%s?wsdl', $_SERVER['HTTP_HOST'], $_SERVER['SCRIPT_NAME']);    

		require_once('Zend/Soap/Server.php');
		$server = new SoapServer($wsdl_url);
		$server->setClass('wsPais_');
		$server->handle();
	}
?>
