<?
require('Headers.php');
require('ClassesExt.php');
ini_set('display_errors', 1);

$dsn = 'mysql:dbname=newssite;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    Object::$db = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    echo 'Подключение не удалось: ' . $e->getMessage();
}

$oUser1 = new User();

$oUser1
    ->setName('Тестовый болванчик')
    ->setEmail('test@test.tu')
    ->setPassword('123456')
    ->setType('admin')
    ->save();
$uesr = $oUser1->findById(1);
//var_dump($uesr);

$oNews = new News();
$author = 'John';
$List = $oNews->getNewsList($author);
var_dump($List);

