<?php
$ip = 'google.com';
exec("ping -c 3 " . $ip, $output, $result);
if ($result == 0)
    echo "LINK UP";
else
    echo "LINK DOWN";
