<?php
require_once('header.php');

if(isset($_POST['form1'])) {
    $valid = 1;
    
    if(empty($_POST['reply'])) {
        $valid = 0;
        $error_message .= 'Please enter a reply.<br>';
    }
    
    if($valid == 1) {
        $statement = $pdo->prepare("INSERT INTO tbl_user_reply (rt_id, user_id, reply, reply_date) VALUES (?,?,?,?)");
        $statement->execute(array(
            $_POST['rt_id'],
            $_SESSION['user']['id'],
            $_POST['reply'],
            date('Y-m-d H:i:s')
        ));
        $statement = $pdo->prepare("UPDATE tbl_rating SET status = 'Replied' WHERE rt_id = ?");
        $statement->execute(array($_POST['rt_id']));
        $success_message = 'Reply is added successfully.';
    }
}

if(!isset($_REQUEST['rt_id'])) {
    header('location: review.php');
    exit;
} else {
    $statement = $pdo->prepare("SELECT * FROM tbl_rating WHERE rt_id=?");
    $statement->execute(array($_REQUEST['rt_id']));
    $total = $statement->rowCount();
    if( $total == 0 ) {
        header('location: review.php');
        exit;
    }
}

$statement = $pdo->prepare("SELECT * FROM tbl_rating WHERE rt_id=?");
$statement->execute(array($_REQUEST['rt_id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
    $p_id = $row['p_id'];
    $cust_id = $row['cust_id'];
    $comment = $row['comment'];
    $rating = $row['rating'];
}
?>

<section class="content-header">
    <div class="content-header-left">
        <h1>Trả lời đánh giá khách hàng</h1>
    </div>
    <div class="content-header-right">
        <a href="review.php" class="btn btn-primary btn-sm">Xem tất cả đánh giá</a>
    </div>
</section>

<section class="content">

    <div class="row">
        <div class="col-md-12">
            <?php if($error_message): ?>
                <div class="callout callout-danger">
                    <p>
                        <?php echo $error_message; ?>
                    </p>
                </div>
            <?php endif; ?>
            <?php if($success_message): ?>
                <div class="callout callout-success">
                    <p>
                        <?php echo $success_message; ?>
                    </p>
                </div>
            <?php endif; ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <form class="form-horizontal" action="" method="post">
                <input type="hidden" name="rt_id" value="<?php echo $_REQUEST['rt_id']; ?>">
                <div class="box box-info">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Mã sản phẩm</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="p_id" value="<?php echo $p_id; ?>" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Mã khách hàng</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="cust_id" value="<?php echo $cust_id; ?>" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Đánh giá</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="comment" readonly><?php echo $comment; ?></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Số sao</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="rating" value="<?php echo $rating; ?>" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Trả lời đánh giá</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="reply" style="height:200px;"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success pull-left" name="form1">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</section>

<?php require_once('footer.php'); ?>
