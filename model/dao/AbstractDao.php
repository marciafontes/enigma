<?php
include_once '../../helpers/Import.php';
Import::config();

class AbstractDao
{
	protected $sql;
	protected $pdo;
	protected $preparedStmt;
	protected $param = 0;
	
	protected function connectPdo()
	{
		try
		{
			return new PDO('mysql:host=' . Config::DB_HOST . ';dbname=' . Config::DB_NAME, Config::DB_USER, Config::DB_PASS);
		}
		catch(PDOException $error)
		{
			echo 'Código: ',$error->getCode(),'. Erro: ',$error->getMessage(),'. Linha: ',$error->getLine();
			die();
		}
	}
	
	protected function closeConnection()
	{
		if($this->pdo != null)
		{
			$this->preparedStmt->closeCursor();

			$this->pdo = null;
			
			$this->param = 0;
		}
	}
	
	protected function prepare()
	{
		$this->pdo = $this->connectPdo();
		
		if ($this->pdo)
			$this->preparedStmt = $this->pdo->prepare($this->sql);
	}
	
	protected function setValue($value)
	{
		$this->preparedStmt->bindValue(++$this->param, $value);
	}
	
	protected function setValueInteger($value)
	{
		$this->preparedStmt->bindParam(++$this->param, $value,PDO::PARAM_INT);
	}
	
	protected function fetchStmtObject($className)
	{
		if ($className)
		{
			$this->preparedStmt->execute();
			$this->preparedStmt->setFetchMode(PDO::FETCH_CLASS,$className);
			
			$object = $this->preparedStmt->fetch();
			
			$this->closeConnection();
			
			return $object;
		}
		else
			return false;
	}
	
	protected function execute()
	{
		$return = $this->preparedStmt->execute();
	
		$this->closeConnection();
		
		$this->param = 0;
		
		return $return;
	}
	
	protected function executeAndReturnId()
	{
		$this->preparedStmt->execute();
		
		$lastId = $this->pdo->lastInsertId();
		
		$this->closeConnection();
		
		$this->param = 0;
		
		return $lastId;
	}
	
	protected function fetchAllStmtObject($className)
	{
		if ($className)
		{
			$this->preparedStmt->execute();
			
			$this->preparedStmt->setFetchMode(PDO::FETCH_CLASS|PDO::FETCH_PROPS_LATE,$className);

			$arrayObject = $this->preparedStmt->fetchAll();
			
			$this->closeConnection();
			
			return $arrayObject;
		}

		$this->closeConnection();
		
		return false;
	}
}
?>