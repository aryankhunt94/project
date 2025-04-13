<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Add Offer Form -->
<section class="add_offer_form layout_padding">
  <div class="container">
    <h3>Add New Restaurant Offer</h3>
    <form action="saveOffer" method="post">
      <div class="form-group">
        <label>Restaurant Name</label>
        <input type="text" name="restaurantName" class="form-control" required>
      </div>
      <div class="form-group">
        <label>Description</label>
        <textarea name="description" class="form-control" required></textarea>
      </div>
      <div class="form-group">
        <label>Coupon Code</label>
        <input type="text" name="couponCode" class="form-control" required>
      </div>
      <div class="form-group">
        <label>City</label>
        <input type="text" name="city" class="form-control" required>
      </div>
      <div class="form-group">
        <label>Area</label>
        <input type="text" name="area" class="form-control" required>
      </div>
      <div class="form-group">
        <label>Discount (%)</label>
        <input type="number" name="discount" class="form-control" required min="1" max="100">
      </div>
      <div class="form-group">
        <label>Valid Till</label>
        <input type="date" name="validTill" class="form-control" required>
      </div>
      <div class="form-group">
        <label>Image URL</label>
        <input type="text" name="imageUrl" class="form-control" required>
      </div>
      <button type="submit" class="btn btn-primary">Add Offer</button>
    </form>
  </div>
</section>


</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">

<!-- Chart.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<title>Admin Page</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<style>
/* Main CSS for Dashboard */
:root {
  --primary-color: #4154f1;
  --secondary-color: #717ff5;
  --light-color: #f6f9ff;
  --dark-color: #444444;
  --card-border-radius: 8px;
  --box-shadow: 0 0 20px rgba(1, 41, 112, 0.1);
}

body {
  font-family: 'Nunito', sans-serif;
  background-color: #f6f9ff;
  color: #444444;
}

.main {
  margin-left: 300px;
  padding: 20px;
  transition: all 0.3s;
}

.pagetitle {
  margin-bottom: 20px;
}

.pagetitle h1 {
  font-size: 28px;
  font-weight: 600;
  color: var(--dark-color);
}

.breadcrumb {
  font-size: 14px;
}

.card {
  border: none;
  border-radius: var(--card-border-radius);
  box-shadow: var(--box-shadow);
  margin-bottom: 24px;
  transition: all 0.3s ease;
}

.card:hover {
  transform: translateY(-5px);
}

.info-card {
  padding: 10px;
}

.card-title {
  padding: 15px 0 15px 0;
  font-size: 18px;
  font-weight: 600;
  color: #012970;
  border-bottom: 1px solid #ebeef4;
}

.card-title span {
  color: #899bbd;
  font-size: 14px;
  font-weight: 400;
}

.card-icon {
  font-size: 28px;
  line-height: 0;
  width: 56px;
  height: 56px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
}

.sales-card .card-icon {
  background-color: #4154f1;
}

.revenue-card .card-icon {
  background-color: #2eca6a;
}

.customers-card .card-icon {
  background-color: #ff771d;
}

/* Dashboard Stats */
.card-body h6 {
  font-size: 28px;
  color: #012970;
  font-weight: 700;
  margin-bottom: 5px;
}

.text-success {
  color: #2eca6a !important;
}

.text-danger {
  color: #e03e2d !important;
}

.ps-3 {
  padding-left: 1rem !important;
}

/* Filter dropdown */
.filter {
  position: absolute;
  right: 15px;
  top: 15px;
}

.filter .icon {
  color: #aab7cf;
  padding-right: 20px;
  padding-bottom: 5px;
  transition: 0.3s;
  font-size: 16px;
}

.filter .icon:hover {
  color: #4154f1;
}

.filter .dropdown-menu {
  border: 0;
  box-shadow: 0 5px 30px 0 rgba(82, 63, 105, 0.2);
}

.filter .dropdown-header {
  padding: 8px 15px;
}

.filter .dropdown-header h6 {
  margin: 0;
  font-size: 14px;
  font-weight: 600;
  color: #444444;
}

.filter .dropdown-item {
  padding: 8px 15px;
  font-size: 14px;
}

/* Reports Section */
.reports-chart-container {
  min-height: 365px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.chart-info {
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
}

.chart-info-card {
  background: #fff;
  padding: 15px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
  flex: 1;
  margin: 0 10px;
  text-align: center;
}

.chart-info-card h4 {
  font-size: 22px;
  margin: 0;
  font-weight: 700;
}

.chart-info-card p {
  margin: 0;
  color: #899bbd;
}

.chart-legend {
  display: flex;
  justify-content: center;
  margin-top: 15px;
}

.chart-legend-item {
  display: flex;
  align-items: center;
  margin: 0 15px;
}

.legend-color {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  margin-right: 5px;
}

.sales-color {
  background-color: #4154f1;
}

.revenue-color {
  background-color: #2eca6a;
}

.customers-color {
  background-color: #ff771d;
}
</style>

</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<!-- Add Offer Form -->
<section class="add_offer_form layout_padding">
  <div class="container">
    <h3 class="mb-4">Add New Restaurant Offer</h3>
    <form action="saveoffers" method="post" >
      <div class="row">
        <div class="col-md-6 mb-3">
          <label>Restaurant Name</label>
          <input type="text" name="restaurantName" class="form-control" required>
        </div>
        <div class="col-md-6 mb-3">
          <label>Coupon Code</label>
          <input type="text" name="couponCode" class="form-control" required>
        </div>
        <div class="col-md-6 mb-3">
          <label>City</label>
          <input type="text" name="city" class="form-control" required>
        </div>
        <div class="col-md-6 mb-3">
          <label>Area</label>
          <input type="text" name="area" class="form-control" required>
        </div>
        <div class="col-md-6 mb-3">
          <label>Discount (%)</label>
          <input type="number" name="discount" class="form-control" required min="1" max="100">
        </div>
        <div class="col-md-6 mb-3">
          <label>Valid Till</label>
          <input type="date" name="validTill" class="form-control" required>
        </div>
        <div class="col-md-12 mb-3">
          <label>Description</label>
          <textarea name="description" class="form-control" rows="2" required></textarea>
        </div>
        
        <div class="col-md-12 text-end">
          <button type="submit" class="btn btn-success">Add Offer</button>
        </div>
      </div>
    </form>
  </div>
</section>



	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  
   <script src="assets/js/main.js"></script>
	
	<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Get canvas context
        var ctx = document.getElementById('reportsChart').getContext('2d');
        
        // Chart data
        var data = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [
                {
                    label: 'Sales',
                    data: [65, 59, 80, 81, 56, 55, 40, 45, 80, 95, 90, 110],
                    borderColor: '#4154f1',
                    backgroundColor: 'rgba(65, 84, 241, 0.3)',
                    tension: 0.3,
                    fill: true
                },
                {
                    label: 'Revenue',
                    data: [28, 48, 40, 19, 86, 27, 90, 85, 70, 75, 65, 80],
                    borderColor: '#2eca6a',
                    backgroundColor: 'rgba(46, 202, 106, 0.3)',
                    tension: 0.3,
                    fill: true
                },
                {
                    label: 'Customers',
                    data: [45, 60, 35, 25, 70, 40, 60, 35, 25, 50, 35, 45],
                    borderColor: '#ff771d',
                    backgroundColor: 'rgba(255, 119, 29, 0.3)',
                    tension: 0.3,
                    fill: true
                }
            ]
        };
        
        // Chart options
        var options = {
            responsive: true,
            maintainAspectRatio: false,
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        font: {
                            size: 12
                        }
                    },
                    grid: {
                        color: 'rgba(0, 0, 0, 0.05)'
                    },
                    title: {
                        display: true,
                        text: 'Values',
                        font: {
                            size: 14,
                            weight: 'bold'
                        }
                    }
                },
                x: {
                    ticks: {
                        font: {
                            size: 12
                        }
                    },
                    grid: {
                        display: false
                    },
                    title: {
                        display: true,
                        text: 'Months',
                        font: {
                            size: 14,
                            weight: 'bold'
                        }
                    }
                }
            },
            plugins: {
                legend: {
                    display: false
                },
                tooltip: {
                    backgroundColor: 'rgba(255, 255, 255, 0.9)',
                    titleColor: '#333',
                    bodyColor: '#666',
                    borderColor: '#ddd',
                    borderWidth: 1,
                    padding: 10,
                    boxPadding: 5,
                    usePointStyle: true,
                    callbacks: {
                        label: function(context) {
                            let label = context.dataset.label || '';
                            if (label) {
                                label += ': ';
                            }
                            if (context.parsed.y !== null) {
                                if (context.dataset.label === 'Revenue') {
                                    label += '$' + context.parsed.y;
                                } else {
                                    label += context.parsed.y;
                                }
                            }
                            return label;
                        }
                    }
                }
            }
        };
        
        // Create the chart
        var reportsChart = new Chart(ctx, {
            type: 'line',
            data: data,
            options: options
        });
    });
    </script>
   
</body>
</html>