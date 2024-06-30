<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
    $statement = $pdo->prepare("
        INSERT INTO tbl_user_message (sender_id, receiver_id, message_content)
        VALUES (?, ?, ?)
    ");
    $statement->execute(array(
        $_SESSION['user']['id'],
        $_POST['receiver_id'],
        $_POST['message_content']
    ));
    $success_message = 'Message sent successfully.';
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Reply to Message</h1>
	</div>
	<div class="content-header-right">
		<a href="message.php" class="btn btn-primary btn-sm">View All Messages</a>
	</div>
</section>

<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-info">
        <div class="box-body">
          <?php
          if(isset($_REQUEST['message_id'])) {
              $message_id = $_REQUEST['message_id'];
              $statement = $pdo->prepare("
                  SELECT m.*, c.cust_name
                  FROM tbl_customer_message m
                  JOIN tbl_customer c ON m.sender_id = c.cust_id
                  WHERE m.message_id = ?
              ");
              $statement->execute(array($message_id));
              $result = $statement->fetchAll(PDO::FETCH_ASSOC);
              foreach ($result as $row) {
                  ?>
                  <h4>From: <?php echo htmlspecialchars($row['cust_name']); ?></h4>
                  <p><?php echo htmlspecialchars($row['message_content']); ?></p>
                  <hr>
                  <form action="" method="post">
                      <input type="hidden" name="receiver_id" value="<?php echo $row['sender_id']; ?>">
                      <div class="form-group">
                          <label for="message_content">Your Reply</label>
                          <textarea name="message_content" class="form-control" rows="5" required></textarea>
                      </div>
                      <div class="form-group">
                          <button type="submit" class="btn btn-success" name="form1">Send Reply</button>
                      </div>
                  </form>
                  <?php
              }
          }
          ?>
          <?php if(isset($success_message)) { echo '<div class="alert ">'.$success_message.'</div>'; } ?>
        </div>
      </div>
    </div>
  </div>
</section>

<?php require_once('footer.php'); ?>
