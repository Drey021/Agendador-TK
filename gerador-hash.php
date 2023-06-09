<?php
$senha = "1234";
var_dump($senha);
echo "<br>";
$senhaCripto = hash('sha256',$senha);

var_dump($senhaCripto);
?>