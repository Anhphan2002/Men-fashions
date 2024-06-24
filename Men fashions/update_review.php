<?php
include('header.php');

$data = json_decode(file_get_contents('php://input'), true);
$rt_id = $data['rt_id'];
$new_comment = $data['comment'];

$statement = $pdo->prepare("UPDATE tbl_rating SET comment = ? WHERE rt_id = ?");
$result = $statement->execute(array($new_comment, $rt_id));

echo json_encode(['success' => $result]);
?>
