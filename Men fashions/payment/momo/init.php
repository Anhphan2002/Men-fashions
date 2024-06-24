<?php
session_start();
require_once('../../admin/inc/config.php');
require_once('../../admin/inc/functions.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $amount = $_POST['amount'];
    $order_id = uniqid(); // Generate a unique order ID

    // Here, you will integrate Momo API and redirect user to Momo payment gateway.
    // Example integration code below (you need to replace with actual Momo API integration):
    
    // Assuming Momo API integration functions and details:
    $momoEndpoint = "https://test-payment.momo.vn/v2/gateway/api/create";
    $partnerCode = "your_partner_code";
    $accessKey = "your_access_key";
    $secretKey = "your_secret_key";
    $orderInfo = "Payment for order #" . $order_id;
    $redirectUrl = BASE_URL . "payment/momo/success.php";
    $ipnUrl = BASE_URL . "payment/momo/ipn.php";

    $requestId = time() . "";
    $requestType = "captureWallet";
    $extraData = "";

    // Prepare the raw data for creating the signature
    $rawHash = "partnerCode=" . $partnerCode . "&accessKey=" . $accessKey . "&requestId=" . $requestId . "&amount=" . $amount . "&orderId=" . $order_id . "&orderInfo=" . $orderInfo . "&redirectUrl=" . $redirectUrl . "&ipnUrl=" . $ipnUrl . "&extraData=" . $extraData;
    $signature = hash_hmac("sha256", $rawHash, $secretKey);

    $data = array(
        'partnerCode' => $partnerCode,
        'accessKey' => $accessKey,
        'requestId' => $requestId,
        'amount' => $amount,
        'orderId' => $order_id,
        'orderInfo' => $orderInfo,
        'redirectUrl' => $redirectUrl,
        'ipnUrl' => $ipnUrl,
        'extraData' => $extraData,
        'requestType' => $requestType,
        'signature' => $signature
    );

    $result = execPostRequest($momoEndpoint, json_encode($data));
    $jsonResult = json_decode($result, true);  // Decode JSON response from Momo

    header('Location: ' . $jsonResult['payUrl']);
    exit();
}
?>
