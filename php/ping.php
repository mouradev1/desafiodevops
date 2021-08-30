<?php
function ping($ip)
{
    exec("ping -c 3 " . $ip, $output, $result);
    if ($result == 0)
        echo "LINK UP";
    else
        echo "LINK DOWN";
}
if (count($argv) < 1) {
    $ip = $argv[1];
    ping($ip);
} else {
    $ip = 'google.com';
    ping($ip);
}
