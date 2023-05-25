<?php
session_start();

header('Content-Type: application/json');
include('../common/lib.php');

if (!isset($_GET['id']) || empty($_GET['id'])) {
    echo '{"error": "id is required !!!"}';
    http_response_code(403);
    die(0);
}
$id = $_GET['id'];
$answer = getGoodResponse($id);
echo json_encode($answer);

http_response_code(200);

?>