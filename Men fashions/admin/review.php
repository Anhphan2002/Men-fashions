<?php require_once('header.php'); ?>

<section class="content-header">
    <div class="content-header-left">
        <h1>Khách hàng đánh giá</h1>
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
                <th>Mã sản phẩm</th>
                <th>Tên khách hàng</th>
                <th>Đánh giá</th>
                <th>Số sao</th>
                <th>Trạng thái</th>
                <th>Hành động</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $i=0;
              $statement = $pdo->prepare("
                SELECT r.*, c.cust_name
                FROM tbl_rating r
                JOIN tbl_customer c ON r.cust_id = c.cust_id
                ORDER BY r.rt_id DESC
              ");
              $statement->execute();
              $result = $statement->fetchAll(PDO::FETCH_ASSOC);
              foreach ($result as $row) {
                $i++;
                ?>
                <tr>
                  <td><?php echo $i; ?></td>
                  <td><?php echo htmlspecialchars($row['p_id']); ?></td>
                  <td><?php echo htmlspecialchars($row['cust_name']); ?></td>
                  <td><?php echo htmlspecialchars($row['comment']); ?></td>
                  <td><?php echo htmlspecialchars($row['rating']); ?></td>
                  <td><?php echo htmlspecialchars($row['status']); ?></td>
                  <td>
                    <a href="review-reply.php?rt_id=<?php echo $row['rt_id']; ?>" class="btn btn-primary btn-xs">Reply</a>
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
