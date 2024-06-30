

<?php
include("admin/inc/config.php");

$sender_id = $_GET['sender_id'];
$receiver_id = $_GET['receiver_id'];

try {
    // Lấy tin nhắn từ bảng tbl_customer_message
    $stmt1 = $pdo->prepare("SELECT sender_id, receiver_id, message_content, timestamp FROM tbl_customer_message WHERE (sender_id = :sender_id AND receiver_id = :receiver_id) OR (sender_id = :receiver_id AND receiver_id = :sender_id) ORDER BY timestamp ASC");
    $stmt1->execute(['sender_id' => $sender_id, 'receiver_id' => $receiver_id]);
    $messages1 = $stmt1->fetchAll(PDO::FETCH_ASSOC);

    // Lấy tin nhắn từ bảng tbl_admin_message
    $stmt2 = $pdo->prepare("SELECT sender_id, receiver_id, message_content, timestamp FROM tbl_user_message WHERE (sender_id = :sender_id AND receiver_id = :receiver_id) OR (sender_id = :receiver_id AND receiver_id = :sender_id) ORDER BY timestamp ASC");
    $stmt2->execute(['sender_id' => $sender_id, 'receiver_id' => $receiver_id]);
    $messages2 = $stmt2->fetchAll(PDO::FETCH_ASSOC);

    // Kết hợp cả hai loại tin nhắn và sắp xếp lại theo timestamp
    $messages = array_merge($messages1, $messages2);
    usort($messages, function($a, $b) {
        return strtotime($a['timestamp']) - strtotime($b['timestamp']);
    });

    echo json_encode($messages);
} catch (PDOException $e) {
    echo json_encode(["status" => "error", "message" => "Failed to retrieve messages: " . $e->getMessage()]);
}
?>
