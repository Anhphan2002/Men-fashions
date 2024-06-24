<?php
include('header.php');

$data = json_decode(file_get_contents('php://input'), true);
$rt_id = $data['rt_id'];

$statement = $pdo->prepare("DELETE FROM tbl_rating WHERE rt_id = ?");
$result = $statement->execute(array($rt_id));

echo json_encode(['success' => $result]);
?>
