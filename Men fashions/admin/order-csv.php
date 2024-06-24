
<?php
// Connect to the database
include 'inc/config.php';
$now = gmdate("D, d M Y H:i:s");

// Prepare the CSV output
header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=dataorder.csv');
$output = fopen('php://output', 'w');

// Write the CSV headers
fputcsv($output, array('SL', 'Customer', 'Product Details', 'Payment Information', 'Paid Amount', 'Payment Status', 'Shipping Status'));

// Fetch the data from the database
$statement = $pdo->prepare("SELECT * FROM tbl_payment ORDER BY id DESC");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC); 

$i = 0;
foreach ($result as $row) {
    $i++;
    $customer = "Id: {$row['customer_id']}\nName: {$row['customer_name']}\nEmail: {$row['customer_email']}";

    // Fetch the product details
    $statement1 = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
    $statement1->execute(array($row['payment_id']));
    $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
    $product_details = "";
    foreach ($result1 as $row1) {
        $product_details .= "Product: {$row1['product_name']} (Size: {$row1['size']}, Color: {$row1['color']}, Quantity: {$row1['quantity']}, Unit Price: {$row1['unit_price']}đ)\n";
    }

    // Prepare payment information
    if($row['payment_method'] == 'PayPal') {
        $payment_info = "Payment Method: {$row['payment_method']}\nPayment Id: {$row['payment_id']}\nDate: {$row['payment_date']}\nTransaction Id: {$row['txnid']}";
    } elseif($row['payment_method'] == 'Bank Deposit') {
        $payment_info = "Payment Method: {$row['payment_method']}\nPayment Id: {$row['payment_id']}\nDate: {$row['payment_date']}\nTransaction Information: {$row['bank_transaction_info']}";
    }

    // Write the data to the CSV file
    fputcsv($output, array($i, $customer, $product_details, $payment_info, $row['paid_amount'] . 'đ', $row['payment_status'], $row['shipping_status']));
}

fclose($output);
exit;
?>
