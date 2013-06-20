<?php 

class dbconn{ 
    var $dblink; 

    function dbconn($dbname, $dbhost="localhost", $dbuser="root", $dbpass=""){
         $this->dblink = mysql_connect($dbhost,$dbuser, $dbpass); 
        mysql_select_db($dbname); 
    } 
    function stresc($str){ 
        return mysql_real_escape_string($str); 
    } 

    function close(){ 
        mysql_close($this->dblink); 
    } 
} 
class dbrs{ 
    var $rs; 
    var $row; 
    var $num; 
    var $rows=array(); 

    function dbrs($sql,$ret){ 
    $ret=($ret==1)?"exeret":"exenr"; 
    $this->$ret($sql); 
    } 
    function exenr($sqlquery){ 
        mysql_query($sqlquery); 
    } 
    function exeret($sqlquery){ 
        $this->rs = mysql_query($sqlquery) or die(mysql_error()); 
        $this->num = mysql_num_rows($this->rs); 
        while($row=mysql_fetch_array($this->rs)){  
            $this->rows[] = $row; 
        } 

    } 
} 
?> 