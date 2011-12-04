<?php
	include_once("../../lib/database.class.php");	
	include_once("../../lib/database.info.php");
	
	class wsPais_ {
		/**
		 * listadoRegiones
		 * @return String
		 */
		function listadoRegiones() {
			if ($DB = new database(DB_HOST, DB_USER, DB_PASS, DB_NAME)) {
				$query = "SELECT * FROM region;";
				
				if ($resRegiones = $DB->select($query)) {
					return json_encode($resRegiones);
				}
				else {
					return "Fail: no se encuentran regiones en la base de datos.";
				}
			}
			else {
				return "Fail: no se pudo establecer conexi&oacute;n con el servidor de base de datos.";
			}
		}
		
		/**
		 * listadoProvincias
		 * @param int idRegion
		 * @return String
		 */
		function listadoProvincias($idRegion) {
			if ($DB = new database(DB_HOST, DB_USER, DB_PASS, DB_NAME)) {
				$query = "SELECT * FROM provincia WHERE provincia_regionid = ".$idRegion.";";
				
				if ($resProvincias = $DB->select($query)) {
					return json_encode($resProvincias);
				}
				else {
					return "Fail: no se encuentran provincias para \$idRegion ".$idRegion.".";
				}
			}
			else {
				return "Fail: no se pudo establecer conexi&oacute;n con el servidor de base de datos.";
			}
		}
		
		/**
		 * listadoComunas
		 * @param int idProvincia
		 * @return String
		 */
		function listadoComunas($idProvincia) {
			if ($DB = new database(DB_HOST, DB_USER, DB_PASS, DB_NAME)) {
				$query = "SELECT * FROM comuna WHERE comuna_provinciaid = ".$idProvincia.";";
				
				if ($resComunas = $DB->select($query)) {
					return json_encode($resComunas);
				}
				else {
					return "Fail: no se encuentran comunas para \$idProvincia ".$idProvincia.".";
				}
			}
			else {
				return "Fail: no se pudo establecer conexi&oacute;n con el servidor de base de datos.";
			}
		}
		
		/**
		 * establecimientoPorRegion
		 * @param int idRegion
		 * @return String
		 */
		function establecimientoPorRegion($idRegion) {
			if ($DB = new database(DB_HOST, DB_USER, DB_PASS, DB_NAME)) {
				$query = "SELECT * FROM establecimiento WHERE establecimiento_regiontemp = ".$idRegion.";";
				
				if ($resEstablecimiento = $DB->select($query)) {
					return json_encode($resEstablecimiento);
				}
				else {
					return "Fail: no se encuentran establecimientos para \$idRegion ".$idRegion.".";
				}
			}
			else {
				return "Fail: no se pudo establecer conexi&oacute;n con el servidor de base de datos.";
			}
		}
		
		/**
		 * establecimientoPorComuna_temp
		 * @param String desComuna
		 * @return String
		 */
		function establecimientoPorComuna_temp($desComuna) {
			if ($DB = new database(DB_HOST, DB_USER, DB_PASS, DB_NAME)) {
				$query = "SELECT * FROM establecimiento WHERE LOWER(establecimiento_comunatemp) LIKE '%".strtolower($desComuna)."%' ORDER BY establecimiento_nombre ASC;";
				
				if ($resEstablecimiento = $DB->select($query)) {
					return json_encode($resEstablecimiento);
				}
				else {
					return "Fail: no se encuentran establecimientos para \$desComuna ".$desComuna.".";
				}
			}
			else {
				return "Fail: no se pudo establecer conexi&oacute;n con el servidor de base de datos.";
			}
		}
	}
?>
