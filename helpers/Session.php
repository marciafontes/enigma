<?php
class Session
{
	public static function start()
	{
		session_start();
	}
	
	public static function set($name,$value)
	{
		$_SESSION[$name] = $value;
	}
	
	public static function get($name)
	{
		if (isset($_SESSION))
			return $_SESSION[$name];
		
		return null;
	}
	
	public static function destroy()
	{
		session_start();
		
		session_destroy();
		unset($_SESSION);
	}
	
	public static function isElement($name)
	{
		if (isset($_SESSION[$name]))
			return $_SESSION[$name];
		
		return null;
	}
}
?>