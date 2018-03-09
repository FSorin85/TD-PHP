<?php


try {

    $hote = 'localhost';
    $port = 3306;
    $db = 'php_is_best';
    $login = 'root';
    $mdp = '';
    $pdo = new PDO('mysql:host=' . $hote . ';port=' . $port .
        ';dbname=' . $db, $login, $mdp);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    var_dump($e->getMessage());
}
//ajout username
$string1 = str_replace('-', '', $argv[1]);
$stringExploded1 = explode('=', $string1);
$usernameOptions = ['username', 'u'];
if(in_array($stringExploded1[0], $usernameOptions)) {
    $user=$stringExploded1[1];
    $pdo->exec("INSERT INTO users (username)VALUES ($user);");
}

//ajout email
$string2 = str_replace('-', '', $argv[2]);
$stringExploded2 = explode('=', $string2);
$emailOptions = ['email', 'e'];
if(in_array($stringExploded2[0], $emailOptions)) {
    $email=$stringExploded2[1];
    $pdo->exec("INSERT INTO users (username)VALUES ($email);");
}

//ajout note
$string3 = str_replace('-', '', $argv[3]);
$stringExploded3 = explode('=', $string3);
$noteOptions = ['note', 'n'];
if(in_array($stringExploded3[0], $noteOptions)) {
    $note = $stringExploded3[1];
    $pdo->exec("INSERT INTO users (username)VALUES ($note);");
}





