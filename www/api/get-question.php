<?php
session_start();

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include('../common/lib.php');

if (!isset($_GET['id']) || empty($_GET['id'])) {
    echo '{"error": "id is required !!!"}';
    http_response_code(403);
    die(0);
}

$id = $_GET['id'];

$question['question'] = getQuestion($id);
$question['answer'] = getAnswer($id);

echo json_encode($question);

http_response_code(200);

?>
