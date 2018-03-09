<?php
define('DS', DIRECTORY_SEPARATOR);
// Créer un chemin absolu
function currentPath($fileName){
    $path = array(
        __DIR__,
        $fileName
    );
    return implode(DS, $path);
}
$path = currentPath('config-database.ini');

if(file_exists($path)) {
    $strings = array();
    $resource = fopen($path, 'r');
    if($resource) {
        while (($string = fgets($resource, 4096)) !== false) {
            $strings[] = trim($string);
        }
        fclose($resource);
    }
    $config = array();
    foreach ($strings as $string) {
        $paramsExploded = explode('=', $string);
        $config[$paramsExploded[0]] = $paramsExploded[1];
    }
}
extract($config);

try {
    $pdo = new PDO("mysql:host=$host;port=$port;dbname=$database", $username, $passwd);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$user='';
$email='';
$note=0;
    $com=substr($argv[1],0,1);
    if ($com='-u' or $com='--u') {
        //ajout username
        $string1 = str_replace('-', '', $argv[1]);
        $stringExploded1 = explode('=', $string1);
        $usernameOptions = ['username', 'u'];
        if (in_array($stringExploded1[0], $usernameOptions)) {
            $user = $stringExploded1[1];
        }

//ajout email
        $string2 = str_replace('-', '', $argv[2]);
        $stringExploded2 = explode('=', $string2);
        $emailOptions = ['email', 'e'];
        if (in_array($stringExploded2[0], $emailOptions)) {
            $email = $stringExploded2[1];
        }

//ajout note
        if(!$argv[3]=NULL){
        $string3 = str_replace('-', '', $argv[3]);
        $stringExploded3 = explode('=', $string3);
        $noteOptions = ['note', 'n'];
        if (in_array($stringExploded3[0], $noteOptions)) {
            $note = $stringExploded3[1];
        }}
        $pdo->exec("INSERT INTO users (username,email,note)VALUES ('$user','$email','$note');");
    }
//mise à jour note
    if ($com='-e' or $com='--e') {
        $string4 = str_replace('-', '', $argv[2]);
        $string5 = str_replace('-','',$argv[1]);
        $stringExploded4 = explode('=', $string4);
        $stringExploded5 = explode('=', $string5);
        $majnoteOptions = ['note', 'n'];
        if (in_array($stringExploded4[0], $noteOptions)) {
            $note = $stringExploded4[1];
            $email = $stringExploded5[1];
        }
        $pdo->exec("UPDATE users  SET  note = '$note' WHERE email='$email';");

    }
}catch (PDOException $e) {
    var_dump($e->getMessage());
}












