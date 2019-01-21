<?php
$dbhost = 'localhost';
$dbuser = 'mrhn2005';
$dbpass = '';
$dbname = 'c9';
$mysqldump=exec('which mysqldump');


$command = "$mysqldump --opt -h $dbhost -u $dbuser -p $dbpass $dbname > $dbname.sql";

exec($command);
?>