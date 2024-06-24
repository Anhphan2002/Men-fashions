<?php
session_start();
require_once('../../admin/inc/config.php');
require_once('../../admin/inc/functions.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $amount = $_POST['amount'];
    $order_id = uniqid(); // Generate a unique order ID

    // Here, you will integrate ZaloPay API and redirect user to ZaloPay payment gateway.
    // Example integration code below (you need to replace with actual ZaloPay API integration):
    
    // Assuming ZaloPay API integration functions and details:
    $zalopayEndpoint = "https://sandbox.zalopay.com.vn/v001/tpe/createorder";
    $app_id = "your_app_id";
    $key1 = "your_key1";
    $key2 = "your_key2";
    $orderInfo = "Payment for order #" . $order_id;
    $redirectUrl = BASE_URL . "payment/zalopay/success.php";

    $data = array(
        'appid' => $app_id,
        'apptransid' => date("ymd") . "_" . $order_id, // transaction id format: yyyymmdd_orderid
        'appuser' => "user123",
        'apptime' => round(microtime(true) * 1000), // miliseconds
        'amount' => $amount,
        'description' => $orderInfo,
        'bankcode' => "zalopayapp",
        'item' => "[]",
        'embeddata' => json_encode(array('redirecturl' => $redirectUrl)),
        'callbackurl' => $redirectUrl,
        'mac' => hash_hmac("sha256", $app_id . "|" . $order_id . "|" . $amount . "|" . $redirectUrl . "|" . $key1, $key2)
    );

    $result = execPostRequest($zalopayEndpoint, json_encode($data));
    $jsonResult = json_decode($result, true);  // Decode JSON response from ZaloPay

    header('Location: ' . $jsonResult['orderurl']);
    exit();
}
?>
