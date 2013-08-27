<?php
include_once '../../helpers/Import.php';
Import::exception('AbstractException');

abstract class AbstractAction
{
	protected $dao;
	
	abstract function getDao();
}
?>