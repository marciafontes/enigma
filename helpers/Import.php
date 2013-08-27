<?php
class Import
{
	public static function includeFile($file)
	{
		$path = '../' . $file;
		
		if (file_exists($path))
			include_once $path;
		else
			echo 'Página inválida: ' . $path;
	}
	
	public static function template($file)
	{
		self::includeFile('template/' . $file . '.php');
	}
	
	public static function config()
	{
		self::includeFile('../config/config.php');
	}
	
	public static function helpers($file)
	{
		self::includeFile('../helpers/' . $file . '.php');
	}
	
	public static function view($file)
	{
		self::includeFile('../view/' . $file . '.php');
	}
	
	public static function controller($file)
	{
		self::includeFile('../controller/' . $file . '.php');
	}
	
	public static function action($file)
	{
		self::includeFile('../model/action/' . $file . '.php');
	}
	
	public static function bean($file)
	{
		self::includeFile('../model/bean/' . $file . '.php');
	}
	
	public static function dao($file)
	{
		self::includeFile('../model/dao/' . $file . '.php');
	}
	
	public static function exception($file)
	{
		self::includeFile('../model/exception/' . $file . '.php');
	}
}