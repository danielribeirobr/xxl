<?php

/**
 * Author: Daniel Ribeiro <daniel@danielribeiro.com>
 */

require_once('Model.php');

class ModelTable extends Model {
	
	private $_table = null;
	private $_alias = null;
	private $_fields = null;
	private $_primaryKeys = null;
	private $_hasAutoIncrement = null;
	
	public function __construct($table){
		$this->_table = $table;
		return parent::__construct();
	}

	public function getTable() {
		return $this->_table;		
	}
	
	public function setAlias($alias) {
		$this->_alias = $alias;
	}
	
	public function getAlias() {
		return $this->_alias;
	}
	
	public function getFields() {
		if(!$this->_fields) {
			$fields = array();
			foreach($this->queryToArray("SHOW FIELDS FROM `" . $this->getTable() . '`') as $field)
				array_push($fields, $field['field']);
			$this->_fields = $fields;
		}
		return $this->_fields;
	}
	
	public function getPrimaryKeys() {
		if(!$this->_primaryKeys) {
			$fields = array();
			foreach($this->queryToArray("SHOW FIELDS FROM `" . $this->getTable() . '` WHERE `Key` = \'PRI\'') as $field)
				array_push($fields, $field['field']);
			$this->_primaryKeys = $fields;
		}
		return $this->_primaryKeys;
	}
		
	public function save($parameters, $forceInsert = false) {
		$primaryKeys = $this->getPrimaryKeys();
		$fields = $this->getFields();
		$queryBody = array();
		
		$mode = 'insert';
		foreach($parameters as $k => $v) {
			if(in_array($k, $fields) && (!in_array($k, $primaryKeys) || $forceInsert))
				array_push($queryBody, $k . ' = ' . $this->quote($v));
			elseif($mode == 'insert' && strlen($parameters[$k]) > 0 && in_array($k, $fields))
				$mode = 'update';
		}
		
		switch ($mode) {
			case 'insert':
				$sql = 'INSERT INTO `' . $this->getTable() . '` SET ' . join(', ', $queryBody);
				break;
			case 'update':
				$sql = 'UPDATE `' .$this->getTable() . '` SET ' . join(', ', $queryBody) . ' WHERE ' . $this->getPrimaryKeyFilter($parameters);
				break;
		}
		
		$this->query($sql);
		
		if($this->hasAutoIncrement())
			if(isset($parameters[$primaryKeys[0]]))
				return $parameters[$primaryKeys[0]];
			else
				return $this->lastInsertId($this->getTable());
			
		return $parameters;
	}
	
	public function hasAutoIncrement() {
		if($this->_hasAutoIncrement === null) {
			$result = $this->queryToArray('SHOW FIELDS FROM `' . $this->getTable() . '` WHERE `Extra` = ' . $this->quote('auto_increment'));
			$this->_hasAutoIncrement = count($result)? true : false; 
		}
		return $this->_hasAutoIncrement;
	}
		
	public function get($id) {
		$result = $this->queryToArray('SELECT * FROM `' . $this->getTable() . '` WHERE ' . $this->getPrimaryKeyFilter($id));
		if(count($result)) 
			return $result[0];
		return array();
	}
	
	protected function getPrimaryKeyFilter($id) {
		$primaryKeys = $this->getPrimaryKeys();
		if(!is_array($id))
			$id = array($primaryKeys[0] => $id);
		$where = array();
		foreach($primaryKeys as $key) {
			if(!isset($id[$key]))
				throw new Exception('Key "' . $key . '" not found on parameter to select primary key record.');
			array_push($where, '`'.$key.'` = ' . $this->quote($id[$key]));
		}
		return join(' AND ', $where);
	}
	
	public function getList($arrColums = array(), $arrWhere = array(), $arrJoins = array(), $arrOrder = array(), $strLimit = null) {
		if(!count($arrColums))
			$arrColums = array($this->getAlias()? $this->getAlias().'.*' : '*');
		$query = 'SELECT ' . join(', ', $arrColums) . ' FROM `' . $this->getTable() . '` ' . $this->getAlias();
		if($arrJoins) {
			if(!is_array($arrJoins))
				$arrJoins = array($arrJoins);
			$query.= ' ' . join(' ', $arrJoins);
		}
		if($arrWhere) {
			if(!is_array($arrWhere))
				$arrWhere = array($arrWhere);
			$query.= ' WHERE (' . join(') AND (', $arrWhere) . ')';			
		}
		if($arrOrder) {
			if(!is_array($arrOrder))
				$arrOrder = array($arrOrder);
			$query.= ' ORDER BY ' . join(', ', $arrOrder);
		}
		if($strLimit)
			$query.= 'LIMIT ' . $strLimit;
		return $this->queryToArray($query);
	}
	
	public function delete($id) {
		return $this->query('DELETE FROM `' . $this->getTable() . '` WHERE ' . $this->getPrimaryKeyFilter($id));
	}	
	
}

?>