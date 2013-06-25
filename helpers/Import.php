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
	
	public static function view($file)
	{
		self::includeFile('../view/' . $file . '.php');
	}
	
	public static function controller($file)
	{
		self::includeFile('../controller/' . $file . '.php');
	}
}