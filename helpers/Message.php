<?php
Import::helpers('html/Div');

class Message
{
	public static function success($message = '')
	{
		self::buildBox($message, 'successBox');
	}
	
	public static function fail($message = '')
	{
		self::buildBox($message, 'failBox');
	}
	
	public static function alert($message)
	{
		self::buildBox($message, 'alertBox');
	}
	
	public static function information($message = '')
	{
		self::buildBox($message, 'informBox');
	}
	
	private static function buildBox($message,$id)
	{
		Div::divContent($message,'',$id);
	}
}
?>