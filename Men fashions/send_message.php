

<?php
// include 'admin//inc//config.php';
include("admin/inc/config.php");
session_start();

// ID của admin nhận tin nhắn
$admin_id = 1; // Giả sử admin có ID là 1

if (!isset($_SESSION['customer']['cust_id'])) {
    echo json_encode(["status" => "error", "message" => "You must be logged in to send a message."]);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $sender_id = $_SESSION['customer']['cust_id'];
    $receiver_id = $admin_id; // Người nhận luôn là admin
    $message_content = $_POST['message_content'];

    // Chèn tin nhắn vào bảng tbl_customer_message
    try {
        $stmt = $pdo->prepare("INSERT INTO tbl_customer_message (sender_id, receiver_id, message_content) VALUES (?, ?, ?)");
        $stmt->execute([$sender_id, $receiver_id, $message_content]);

        echo json_encode(["status" => "success"]);
    } catch (PDOException $e) {
        echo json_encode(["status" => "error", "message" => "Failed to send message: " . $e->getMessage()]);
    }
}
?>
