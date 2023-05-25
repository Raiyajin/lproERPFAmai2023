<?php
session_start();

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include('../common/lib.php');

$question = getNBQuestion();

//echo json_encode(JSON.stringify({ nb: $question}));
echo json_encode(array('nb' => $question), JSON_NUMERIC_CHECK);
http_response_code(200);

?>