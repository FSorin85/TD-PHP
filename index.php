<?php

$hote = 'localhost';
$port = 3306;
$db = 'php_is_best';
$login = 'root';
$mdp = '';
$pdo = new PDO('mysql:host='.$hote.';port='. $port.
        ';dbname='.$db, $login, $mdp);
