<?php
function logphp($log)
{
    $fp = fopen("./log/calculadoraphp.log", "a");
    fwrite($fp, $log ."\n");
    fclose($fp);
};
if (count($argv) == 1) {
    $a = 23;
    $b = 3;
    $result = $a / $b;
    $valor = "Resultado da soma setada no codigo: " . number_format($result, 1, '.', '');
    echo $valor;
    logphp($valor);
} else {
    $a = $argv[1];
    $b = $argv[2];
    $result = $a / $b;
    $valor = "Resultado da soma passada por parametro: " . number_format($result, 1, '.', '');
    echo $valor;
    logphp($valor);
}
