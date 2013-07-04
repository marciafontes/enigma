<?php
class Div
{
	public static function create($class = '',$id = '')
	{
		$div = '<div';
		if ($class)
			$div .= ' class="'.$class.'"';
		if ($id)
			$div .= ' id="' . $id . '"';
		$div .= '>';
		echo $div;
	}
	
	public static function divClose()
	{
		echo '</div>';
	}
	
	public static function divContent($content,$class = '',$id = '')
	{
		self::create($class,$id);
		echo $content;
		self::divClose();
	}
}
?>