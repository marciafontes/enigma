<?php
interface IRequest
{
	public function Request();
	
	public function add($key,$value);
	
	public function get($key);
	
	public function isElement($key);
	
	public function dump();
}