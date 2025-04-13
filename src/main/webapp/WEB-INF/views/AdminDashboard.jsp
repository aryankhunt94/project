<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<title>Admin Page</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


<style>
/* Custom CSS for Admin Page */

/* Page Title Styling */
.pagetitle h1 {
    font-size: 2.5rem;
    font-weight: 700;
    color: #2c3e50;
    margin-bottom: 0.5rem;
}

.pagetitle .breadcrumb {
    background-color: transparent;
    padding: 0;
    margin-bottom: 0;
}

.pagetitle .breadcrumb-item a {
    color: #6c757d;
    text-decoration: none;
}

.pagetitle .breadcrumb-item.active {
    color: #2c3e50;
    font-weight: 500;
}

/* Card Styling */
.card {
    border: none;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    background-color: #ffffff;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.card-icon {
    background-color: #e9ecef;
    color: #2c3e50;
    font-size: 1.5rem;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
}

.card-title {
    font-size: 1.25rem;
    font-weight: 600;
    color: #2c3e50;
    margin-bottom: 1rem;
}

.card-title span {
    font-size: 0.9rem;
    color: #6c757d;
}

/* Filter Dropdown Styling */
.filter .dropdown-menu {
    border: none;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

.filter .dropdown-item {
    font-size: 0.9rem;
    color: #2c3e50;
    padding: 0.5rem 1rem;
}

.filter .dropdown-item:hover {
    background-color: #f8f9fa;
    color: #2c3e50;
}

/* Main Content Styling */
#main {
    padding: 20px;
    background-color: #f8f9fa;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .pagetitle h1 {
        font-size: 2rem;
    }

    .card-title {
        font-size: 1.1rem;
    }

    .card-icon {
        width: 40px;
        height: 40px;
        font-size: 1.2rem;
    }
}

/* Custom Colors for Cards */
.sales-card {
    background-color: #e3f2fd; /* Light Blue */
}

.revenue-card {
    background-color: #fff3e0; /* Light Orange */
}

.customers-card {
    background-color: #f5f5f5; /* Light Gray */
}

/* Hover Effects for Custom Cards */
.sales-card:hover {
    background-color: #bbdefb; /* Slightly Darker Blue */
}

.revenue-card:hover {
    background-color: #ffe0b2; /* Slightly Darker Orange */
}

.customers-card:hover {
    background-color: #e0e0e0; /* Slightly Darker Gray */
}
</style>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>

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

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Sales Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Offers <span>| Today</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>145</h6>
											<span class="text-success small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Restraurent 
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-currency-dollar"></i>
										</div>
										<div class="ps-3">
											<h6>$3,264</h6>
											<span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->

						<!-- Customers Card -->
						<div class="col-xxl-4 col-xl-12">

							<div class="card info-card customers-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Customers <span>| This Year</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>1244</h6>
											<span class="text-danger small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">decrease</span>

										</div>
									</div>

								</div>
							</div>

						</div>
						<!-- End Customers Card -->

						<!-- Reports -->
						<div class="col-12">
							<div class="card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
    								<h5 class="card-title">
        							Reports <span>/Today</span>
    								</h5>
    								<div id="3dGraph" style="width: 100%; height: 500px;"></div>
								</div>
								
								<div class="card-body">
									<h5 class="card-title">
										Reports <span>/Today</span>
									</h5>

					<br><br>
					<br><br>
					

								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	<script>
document.addEventListener("DOMContentLoaded", function() {
    // Data for 3D graph
    const data = [
        {
            x: [1, 2, 3, 4, 5], // X-axis values
            y: [2, 3, 4, 5, 6], // Y-axis values
            z: [1, 2, 3, 4, 5], // Z-axis values
            mode: 'markers',
            type: 'scatter3d',
            marker: {
                size: 12,
                color: 'blue', // Marker color
                opacity: 0.8
            }
        }
    ];

    // Layout for 3D graph
    const layout = {
        title: '3D Scatter Plot',
        scene: {
            xaxis: { title: 'X-Axis' },
            yaxis: { title: 'Y-Axis' },
            zaxis: { title: 'Z-Axis' }
        },
        margin: {
            l: 0,
            r: 0,
            b: 0,
            t: 50
        }
    };

    // Render the 3D graph
    Plotly.newPlot('3dGraph', data, layout);
});
</script>
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

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Sales Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										users <span>| Today</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people3"></i>
										</div>
										<div class="ps-3">
											<h6>${totaluser }</h6>
											<span class="text-success small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Restraurent 
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-currency-dollar"></i>
										</div>
										<div class="ps-3">
											<h6>$3,264</h6>
											<span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->

						<!-- Customers Card -->
						<div class="col-xxl-4 col-xl-12">

							<div class="card info-card customers-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Customers <span>| This Year</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>1244</h6>
											<span class="text-danger small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">decrease</span>

										</div>
									</div>

								</div>
							</div>

						</div>
						<!-- End Customers Card -->

						<!-- Reports -->
						<div class="col-12">
							<div class="card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Reports <span>/Today</span>
									</h5>

                                    <div class="reports-chart-container">
                                        <div class="chart-info">
                                            <div class="chart-info-card">
                                                <h4>$34,600</h4>
                                                <p>Total Revenue</p>
                                            </div>
                                            <div class="chart-info-card">
                                                <h4>984</h4>
                                                <p>New Orders</p>
                                            </div>
                                            <div class="chart-info-card">
                                                <h4>58%</h4>
                                                <p>Conversion Rate</p>
                                            </div>
                                        </div>
                                        
                                        <div>
                                            <canvas id="reportsChart" style="width: 100%; height: 300px;"></canvas>
                                        </div>
                                        
                                        <div class="chart-legend">
                                            <div class="chart-legend-item">
                                                <div class="legend-color sales-color"></div>
                                                <span>Sales</span>
                                            </div>
                                            <div class="chart-legend-item">
                                                <div class="legend-color revenue-color"></div>
                                                <span>Revenue</span>
                                            </div>
                                            <div class="chart-legend-item">
                                                <div class="legend-color customers-color"></div>
                                                <span>Customers</span>
                                            </div>
                                        </div>
                                    </div>

								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

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