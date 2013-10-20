<?php
Import::helpers('request/IRequest');

class Request implements IRequest
{
	private $arrayRequest = array();
	
	public function Request()
	{
		$this->loadArray($_GET);
		$this->loadArray($_POST);
	}
	
	public function loadArray($array)
	{
		if (isset($array))
		{
			foreach ($array as $key => $value)
			{
				if ($array[$key])
					$this->arrayRequest[$key] = $value;
			}
		}
	}
	
	public function get($key)
	{
		if (isset($this->arrayRequest[$key]))
			return $this->arrayRequest[$key];
		
		return false;
	}
	
	public function add($key,$value)
	{
		$this->arrayRequest[$key] = $value;
	}
	
	public function remove($key)
	{
		if (isset($this->arrayRequest[$key]))
			unset($this->arrayRequest[$key]);
	}
	
	public function isElement($key)
	{
		if (isset($this->arrayRequest[$key]))
			return true;
		
		return false;
	}
	
	public function dump()
	{
		var_dump($this->arrayRequest);
	}
}
?>