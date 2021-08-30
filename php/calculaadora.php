<?php
function logphp($log)
{
    $fp = fopen("./log/calculadoraphp.log", "a");
    fwrite($fp, $log . "\n");
    fclose($fp);
};

function calcular()
{
    $a = 23;
    $b = 3;
    $result = $a / $b;
    $valor = "Resultado da soma codigo: " . number_format($result, 1, '.', '');
    echo $valor;
    logphp($valor);
}
if (count($argv) < 1) {
    $a = $argv[1];
    $b = $argv[2];
    calcular($a,$b);
} else {
    $a = 23;
    $b = 3;
    calcular($a,$b);
}
