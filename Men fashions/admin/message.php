<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Messages</h1>
	</div>
</section>

<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="box box-info">        
        <div class="box-body table-responsive">
          <table id="example1" class="table table-bordered table-hover table-striped">
			<thead>
			    <tr>
			        <th>#</th>
			        <th>Customer Name</th>
			        <th>Message</th>
			        <th>Timestamp</th>
			        <th>Action</th>
			    </tr>
			</thead>
            <tbody>
            	<?php
            	$i=0;
            	$statement = $pdo->prepare("
            	    SELECT m.*, c.cust_name
            	    FROM tbl_customer_message m
            	    JOIN tbl_customer c ON m.sender_id = c.cust_id
            	    ORDER BY m.timestamp DESC
            	");
            	$statement->execute();
            	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
            	foreach ($result as $row) {
            		$i++;
            		?>
					<tr>
	                    <td><?php echo $i; ?></td>
	                    <td><?php echo htmlspecialchars($row['cust_name']); ?></td>
	                    <td><?php echo htmlspecialchars($row['message_content']); ?></td>
	                    <td><?php echo htmlspecialchars($row['timestamp']); ?></td>
	                    <td>
	                    	<a href="message-reply.php?message_id=<?php echo $row['message_id']; ?>" class="btn btn-primary btn-xs">Reply</a>
	                    </td>
	                </tr>
            		<?php
            	}
            	?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<?php require_once('footer.php'); ?>
