<?php
session_start();

header('Content-Type: application/json');
include('../common/lib.php');

checkServerKey();
$username = $_GET['username'];
$password = $_GET['password'];
$user = getUserByLogin($username, $password);