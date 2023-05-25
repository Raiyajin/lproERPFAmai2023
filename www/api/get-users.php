<?php
session_start();

header('Content-Type: application/json');
include('../common/lib.php');

checkServerKey();
$token = $_GET['token'];
$user = getUserByToken($token);
if ($user == null) {
    echo '{"error": "Wrong token !!!"}';
    http_response_code(403);
    die(0);
}

if (isset($_GET['id']) && !empty($_GET['id'])) {
    $user = getUserById($_GET['id']);

    if ($user == null) {
        echo '{"info" : "user not found !!!"}';
        http_response_code(400);
        die(0);
    }
    print(json_encode($user));
    http_response_code(200);
    die(0);
}

$users = getAllUsers();
if ($users == null) {
    echo '{"info": "Empty list of users !!!"}';
    http_response_code(204);
    die(0);
}
print(json_encode($users));
http_response_code(200);

