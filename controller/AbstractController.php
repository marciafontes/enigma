<?php
include_once '../../helpers/Import.php';
Import::helpers('request/Request');
Import::helpers('Message');
Import::helpers('Session');
Import::helpers('Security');

abstract class AbstractController
{
	protected $action;
	
	abstract protected function getAction();
}
?>