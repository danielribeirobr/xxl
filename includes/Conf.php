<?php

class Conf extends Model {

	/**
	 * Define a configuracao
	 *
	 * @param string $conf_name
	 */
	public function setConf( $conf_name, $conf = null){
		// se caso nao foi informado o $conf, entao devo remover esta configuracao
		if( !$conf ){
			$this->query("DELETE FROM conf WHERE conf_name = " . $this->quote( $conf_name ) );
			return;
		}

		// verifica se ja existe uma configuracao com este nome
		$result = $this->queryToArray("SELECT conf_id FROM conf WHERE conf_name = " . $this->quote( $conf_name ) ) ;
		if( $result[0]['conf_id'] ){
			$this->query("UPDATE conf SET conf = " . $this->quote( $conf ) . ", conf_name = " . $this->quote( $conf_name ) );
		}
		else {
			$this->query("INSERT INTO conf SET conf = " . $this->quote( $conf ) . ", conf_name = " . $this->quote( $conf_name ) );
		}
	}

	/**
	 * Obtem o valor da configuracao
	 *
	 * @param string $conf_name
	 * @return string
	 */
	public function getConf($conf_name){
		$result = $this->queryToArray("SELECT conf FROM conf WHERE conf_name = " . $this->quote( $conf_name ) ) ;
		return $result[0]['conf'];
	}
}

?>