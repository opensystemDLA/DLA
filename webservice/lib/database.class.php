<?php
	/**
	 * Created on 17-06-2011
	 *
	 * Clase de conexion a base de datos lite
	 * @author Hernan Vogel
	 * @version 0.0.1
	 */
	class database {
		// Identificador del recurso
		private $link;
		// Host de la base de datos
		private $host;
		// Nombre de usuario para el host de la base de datos
		private $usuario;
		// Contrasena para el usuario de la base de datos
		private $contrasena;
		// Nombre de la base de datos
		private $database;
		
		/**
		 * Constructor de la clase database
		 * 
		 * @param string $host Host de la base de datos
		 * @param string $usuario Usuario para el host de la base de datos
		 * @param string $contrasena Contrasena para el usuario de la base de datos
		 * @param string $database Nombre de la base de datos
		 */
		public function __construct($host, $usuario, $contrasena, $database) {
			$this->host = $host;
			$this->usuario = $usuario;
			$this->contrasena = $contrasena;
			$this->database = $database;
			
			/*
			if (!$this->conectar())
				exit();
			*/
			
			return $this->conectar();
		}
		
		/**
		 * Funcion local que establece la conexion con la base de datos
		 * en base a los atributos obtenidos por el constructor
		 *
		 * @return boolean true si se establecio la conexion, false si no se establecio la conexion
		 */
		private function conectar() {
			if ($this->link = @mysql_connect($this->host, $this->usuario, $this->contrasena)) {
				if (@mysql_select_db($this->database, $this->link)) {
					mysql_query("SET NAMES 'utf8'", $this->link);
					return true;
				}
				else {
					echo "Fail: no se pudo establecer conexi&oacute;n con la base de datos.";
					return false;
				}
			}
			else {
				echo "Fail: no se pudo establecer conexi&oacute;n con el servidor de base de datos.";
				return false;
			}
		}
		
		/**
		 * Funcion publica para cerrar conexion con la base de datos
		 */
		public function desconectar() {
			if ($this->link) {
				mysql_close($this->link);
				$this->link = NULL;
			}
		}
		
		/**
		 * Funcion publica para realizar una consulta SELECT a la base de datos
		 *
		 * @param string Query
		 * @return array Retorna un array asociativo con los datos obtenidos, en caso contrario retorna NULL
		 */
		public function select($query, $cerrarConexion = true) {
			if (!$this->link) {
				if (!$this->conectar())
					exit();
			}
			
			if (!$select = mysql_query($query, $this->link)) {
				trigger_error("Error en la consulta SQL: ".$query, E_USER_WARNING);
				return NULL;
			}
			else {
				if (mysql_num_rows($select) > 0) {
					$resultado = array();
					$i = 0;
					while ($fila = mysql_fetch_row($select)) {
						foreach ($fila as $j => $valor) {
							$campo = mysql_field_name($select, $j);
							$dato[$campo] = $valor;
							$resultado[$i] = $dato;
						}
						$i++;
					}
					return $resultado;
				}
				else
					return NULL;
			}
		}
	}
?>
