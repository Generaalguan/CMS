<?Php

$db['db_host'] = "127.0.0.1";
$db['db_user'] = "c7250cms";
$db['db_pass'] = "wBEYHx5!ruWw";
$db['db_name'] = "c7250makeitrain";


foreach ($db as $key => $value) {

    define(strtoupper($key), $value);
}

$connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
