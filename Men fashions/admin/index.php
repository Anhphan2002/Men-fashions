<?php require_once('header.php'); ?>

<section class="content-header">
	<h1>Bảng thống kê</h1>
</section>

<?php
// lọc
// Initialize default values for month and year
$selected_month = isset($_GET['month']) ? $_GET['month'] : date('m');
$selected_year = isset($_GET['year']) ? $_GET['year'] : date('Y');
// Prepare filter conditions for SQL queries
$date_filter = "$selected_year-$selected_month-01";
$next_month = date('Y-m-d', strtotime('+1 month', strtotime($date_filter)));


$statement = $pdo->prepare("SELECT * FROM tbl_top_category");
$statement->execute();
$total_top_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_mid_category");
$statement->execute();
$total_mid_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_end_category");
$statement->execute();
$total_end_category = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_product");
$statement->execute();
$total_product = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_status='1'");
$statement->execute();
$total_customers = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_subscriber WHERE subs_active='1'");
$statement->execute();
$total_subscriber = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_shipping_cost");
$statement->execute();
$available_shipping = $statement->rowCount();

// $statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
// $statement->execute(array('Completed'));
// $total_order_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE shipping_status=?");
$statement->execute(array('Completed'));
$total_shipping_completed = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=?");
$statement->execute(array('Pending'));
$total_order_pending = $statement->rowCount();

$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=? AND shipping_status=?");
$statement->execute(array('Completed','Pending'));
$total_order_complete_shipping_pending = $statement->rowCount();

// lọc
$statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_status=? AND (payment_date >= ? AND payment_date < ?)");
$statement->execute(array('Completed', $date_filter, $next_month));
$total_order_completed = $statement->rowCount();

// Fetch completed orders data for the entire year
$completed_orders_data = [];
for ($m = 1; $m <= 12; $m++) {
    $month_start = date('Y-m-01', strtotime("$selected_year-$m-01"));
    $month_end = date('Y-m-d', strtotime('+1 month', strtotime($month_start)));

    $statement = $pdo->prepare("SELECT COUNT(*) FROM tbl_payment WHERE payment_status=? AND (payment_date >= ? AND payment_date < ?)");
    $statement->execute(array('Completed', $month_start, $month_end));
    $completed_orders_data[$m] = $statement->fetchColumn();
}
?>

<section class="content">
	<div class="row">
		<!-- phần 1 -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-primary">
			<div class="inner">
				<h3><?php echo $total_product; ?></h3>

				<p>Các sản phẩm</p>
			</div>
			<div class="icon">
				<i class="ionicons ion-android-cart"></i>
			</div>
			
			</div>
		</div>

		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-red">
			<div class="inner">
			<h3><?php echo $total_customers; ?></h3>

			<p>Khách hàng đang hoạt động</p>
			</div>
			<div class="icon">
			<i class="ionicons ion-person-stalker"></i>
			</div>
			
		</div>
		</div>

		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-yellow">
			<div class="inner">
			<h3><?php echo $total_subscriber; ?></h3>

			<p>Người đăng ký</p>
			</div>
			<div class="icon">
			<i class="ionicons ion-person-add"></i>
			</div>
			
		</div>
		</div>

		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-teal">
			<div class="inner">
			<h3><?php echo $available_shipping; ?></h3>

			<p>Vận chuyển có sẵn</p>
			</div>
			<div class="icon">
			<i class="ionicons ion-location"></i>
			</div>
			
		</div>
		</div>

		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-olive">
			<div class="inner">
			<h3><?php echo $total_top_category; ?></h3>

			<p>Danh mục cấp cao</p>
			</div>
			<div class="icon">
			<i class="ionicons ion-arrow-up-b"></i>
			</div>
			
		</div>
		</div>

		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-blue">
			<div class="inner">
			<h3><?php echo $total_mid_category; ?></h3>

			<p>Danh mục cấp trung</p>
			</div>
			<div class="icon">
			<i class="ionicons ion-android-menu"></i>
			</div>
			
		</div>
		</div>

		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-maroon">
			<div class="inner">
			<h3><?php echo $total_end_category; ?></h3>

			<p>Danh mục cấp thấp</p>
			</div>
			<div class="icon">
			<i class="ionicons ion-arrow-down-b"></i>
			</div>
			
		</div>
		</div>

		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-maroon">
			<div class="inner">
				<h3><?php echo $total_order_pending; ?></h3>

				<p>Cấp phát đơn đặt hàng</p>
			</div>
			<div class="icon">
				<i class="ionicons ion-clipboard"></i>
			</div>
			
			</div>
		</div>
				<!-- ./col -->		
				<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-orange">
				<div class="inner">
				<h3><?php echo $total_order_complete_shipping_pending; ?></h3>

				<p>Đang chờ vận chuyển</p>
				</div>
				<div class="icon">
				<i class="ionicons ion-load-a"></i>
				</div>
				
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-aqua">
			<div class="inner">
				<h3><?php echo $total_shipping_completed; ?></h3>

				<p>Đã hoàn thành vận chuyển</p>
			</div>
			<div class="icon">
				<i class="ionicons ion-checkmark-circled"></i>
			</div>
			
			</div>
		</div>
		<!-- ./col -->
		<div class="col-lg-3 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-green">
			<div class="inner">
				<h3><?php echo $total_order_completed; ?></h3>

				<p>Đơn hàng đã hoàn thành</p>
			</div>
			<div class="icon">
				<i class="ionicons ion-android-checkbox-outline"></i>
			</div>
			
			</div>
		</div>	
	</div>

	<!-- form lọc -->
	<form method="get" class="form-inline" style="margin-bottom: 20px;">
        <div class="form-group">
            <label for="month">Tháng: </label>
            <select name="month" id="month" class="form-control">
                <?php for ($m = 1; $m <= 12; $m++) : ?>
                    <option value="<?php echo sprintf("%02d", $m); ?>" <?php if ($selected_month == sprintf("%02d", $m)) echo 'selected'; ?>>
                        <?php echo sprintf("%02d", $m); ?>
                    </option>
                <?php endfor; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="year">Năm: </label>
            <select name="year" id="year" class="form-control">
                <?php for ($y = date('Y'); $y >= 2000; $y--) : ?>
                    <option value="<?php echo $y; ?>" <?php if ($selected_year == $y) echo 'selected'; ?>>
                        <?php echo $y; ?>
                    </option>
                <?php endfor; ?>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Lọc</button>
    </form>

	<!-- Chart Container -->
    <canvas id="completedOrdersChart" width="400" height="200"></canvas>
		  
</section>

<?php require_once('footer.php'); ?>

<script>
    var ctx = document.getElementById('completedOrdersChart').getContext('2d');
    var completedOrdersChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [{
                label: 'Đơn hàng đã hoàn thành',
                data: <?php echo json_encode(array_values($completed_orders_data)); ?>,
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1,
                fill: false
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
</body>
</html>
