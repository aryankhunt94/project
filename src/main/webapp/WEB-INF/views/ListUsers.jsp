<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>List User</h2>
	<table border="2">

		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gender</th>
			<th>email</th>
			<th>Contact Num</th>
			<th>Born Year</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${Users }" var="u">
		
			<tr>
				<td>${u.firstName }</td>
				<td>${u.lastName }</td>
				<td>${u.gender }</td>
				<td>${u.email }</td>
				<td>${u.contactNumber }</td>
				<td>${u.birthDate }</td>
				<td><a href="edituser?userId=${u.userId }"> Edit</a>   |   
				<a href="viewuser?userId=${u.userId }"> View</a>    |   
				<a href="deleteuser?userId=${u.userId }"> Delete</a></td>
			
		    </tr>
		
		</c:forEach>
		
	</table>

</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- DataTables CSS -->
<link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  .action-btn {
    padding: 4px 8px;
    margin: 0 2px;
    font-size: 13px;
  }
  .pagination .page-link {
    padding: 0.375rem 0.75rem;
  }
  .dataTables_info, .dataTables_length, .dataTables_filter {
    margin-bottom: 15px;
  }
  .dataTables_length select {
    padding: 0.375rem 2.25rem 0.375rem 0.75rem;
    font-size: 0.875rem;
    border-radius: 0.25rem;
  }
  .dataTables_filter input {
    padding: 0.375rem 0.75rem;
    font-size: 0.875rem;
    border-radius: 0.25rem;
    margin-left: 5px;
  }
  .table-responsive {
    overflow-x: auto;
  }
</style>

</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List User</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">
										Users<span>/all</span>
									</h5>

                                    <div class="table-responsive">
                                        <table class="table table-hover" id="myTable">
                                            <thead>
                                                <tr>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>Gender</th>
                                                    <th>Email</th>
                                                    <th>Contact Num</th>
                                                    <th>Born Year</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${Users }" var="u">
                                                    <tr>
                                                        <td>${u.firstName}</td>
                                                        <td>${u.lastName}</td>
                                                        <td>${u.gender}</td>
                                                        <td>${u.email}</td>
                                                        <td>${u.contactNumber}</td>
                                                        <td>${u.birthDate}</td>
                                                        <td>
                                                            <a href="edituser?userId=${u.userId}" class="btn btn-primary action-btn" title="Edit">
                                                                <i class="fas fa-edit"></i> Edit
                                                            </a>
                                                            <a href="viewuser?userId=${u.userId}" class="btn btn-info action-btn" title="View">
                                                                <i class="fas fa-eye"></i> View
                                                            </a>
                                                            <a href="deleteuser?userId=${u.userId}" class="btn btn-danger action-btn" title="Delete" onclick="return confirm('Are you sure you want to delete this user?')">
                                                                <i class="fas fa-trash"></i> Delete
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
								</div>
							</div>
						</div>
						<!-- End Reports -->
					</div>
				</div>
				<!-- End Left side columns -->
			</div>
		</section>
	</main>
	<!-- main content end  -->

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<!-- DataTables JS -->
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
	<script type="text/javascript">
	$(document).ready(function() {
		let table = new DataTable('#myTable', {
			pagingType: "full_numbers",
			lengthMenu: [[5, 10, 25, 50, 100, -1], [5, 10, 25, 50, 100, "All"]],
			pageLength: 10,
			language: {
				paginate: {
					first: '<i class="fas fa-angle-double-left"></i>',
					previous: '<i class="fas fa-angle-left"></i>',
					next: '<i class="fas fa-angle-right"></i>',
					last: '<i class="fas fa-angle-double-right"></i>'
				},
				info: "Showing START to END of TOTAL entries",
				lengthMenu: "Show MENU entries per page",
				search: "Search:",
				zeroRecords: "No matching records found",
				infoEmpty: "Showing 0 to 0 of 0 entries",
				infoFiltered: "(filtered from MAX total entries)"
			},
			responsive: true,
			dom: '<"row"<"col-sm-6"l><"col-sm-6"f>>' +
				'<"row"<"col-sm-12"tr>>' +
				'<"row"<"col-sm-5"i><"col-sm-7"p>>',
			stateSave: true
		});
		
		// Make the table responsive
		$(window).resize(function() {
			table.columns.adjust().responsive.recalc();
		});
	});
	</script>

</body>
</html> --%><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- DataTables CSS -->
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<!-- Boxicons for additional icons -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<style>
  /* Modern table styling */
  .card {
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
    border: none;
  }
  
  .card-body {
    padding: 2rem;
  }
  
  .card-title {
    font-size: 1.5rem;
    font-weight: 600;
    margin-bottom: 1.5rem;
    color: #2c3e50;
  }
  
  .card-title span {
    font-size: 1rem;
    color: #7f8c8d;
    font-weight: 400;
  }
  
  /* Table styling */
  #myTable {
    width: 100% !important;
    border-collapse: separate;
    border-spacing: 0 12px;
  }
  
  #myTable thead th {
    background-color: #f8f9fa;
    color: #495057;
    font-weight: 600;
    border: none;
    padding: 12px 15px;
    position: sticky;
    top: 0;
  }
  
  #myTable tbody tr {
    background-color: white;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.03);
    border-radius: 10px;
    transition: all 0.3s ease;
  }
  
  #myTable tbody tr:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  }
  
  #myTable tbody td {
    padding: 15px;
    vertical-align: middle;
    border-top: none;
    border-bottom: 1px solid #f1f1f1;
  }
  
  /* Action buttons - Curved style */
  .action-btns {
    display: flex;
    gap: 8px;
    flex-wrap: wrap;
  }
  
  .action-btn {
    padding: 8px 12px;
    border-radius: 20px;
    font-size: 13px;
    transition: all 0.3s ease;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    min-width: 36px;
    height: 36px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  }
  
  .action-btn i {
    margin-right: 6px;
    font-size: 14px;
  }
  
  .action-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.15);
  }
  
  .action-btn:active {
    transform: translateY(0);
  }
  
  .btn-edit {
    background-color: #4e73df;
    color: white;
    border: none;
  }
  
  .btn-edit:hover {
    background-color: #3a5bbf;
    color: white;
  }
  
  .btn-view {
    background-color: #1cc88a;
    color: white;
    border: none;
  }
  
  .btn-view:hover {
    background-color: #17a673;
    color: white;
  }
  
  .btn-delete {
    background-color: #e74a3b;
    color: white;
    border: none;
  }
  
  .btn-delete:hover {
    background-color: #d62c1a;
    color: white;
  }
  
  /* Icon-only version for smaller screens */
  @media (max-width: 768px) {
    .action-btn span {
      display: none;
    }
    .action-btn i {
      margin-right: 0;
    }
    .action-btn {
      min-width: 36px;
      width: 36px;
      justify-content: center;
    }
  }
  
  /* Pagination styling */
  .dataTables_wrapper .dataTables_paginate .paginate_button {
    border-radius: 20px !important;
    margin: 0 3px !important;
    transition: all 0.3s ease;
  }
  
  .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
    transform: translateY(-2px);
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  }
  
  .dataTables_wrapper .dataTables_paginate .paginate_button.current {
    background: linear-gradient(135deg, #6e8efb, #a777e3) !important;
    border-color: transparent !important;
    color: white !important;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
  }
</style>

</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List User</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">
										Users <span>/ All Registered Users</span>
									</h5>

                                    <div class="table-responsive">
                                        <table class="table" id="myTable">
                                            <thead>
                                                <tr>
                                                    <th>First Name</th>
                                                    <th>Last Name</th>
                                                    <th>Gender</th>
                                                    <th>Email</th>
                                                    <th>Contact Num</th>
                                                    <th>Born Year</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${Users }" var="u">
                                                    <tr>
                                                        <td>${u.firstName}</td>
                                                        <td>${u.lastName}</td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${u.gender eq 'Male'}">
                                                                    <i class='bx bx-male-sign' style="color: #3498db; font-size: 1.2rem;"></i> Male
                                                                </c:when>
                                                                <c:when test="${u.gender eq 'Female'}">
                                                                    <i class='bx bx-female-sign' style="color: #e84393; font-size: 1.2rem;"></i> Female
                                                                </c:when>
                                                                <c:otherwise>
                                                                    ${u.gender}
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td><a href="mailto:${u.email}" class="text-primary">${u.email}</a></td>
                                                        <td>${u.contactNumber}</td>
                                                        <td>${u.birthDate}</td>
                                                        <td>
                                                            <div class="action-btns">
                                                                <a href="edituser?userId=${u.userId}" class="action-btn btn-edit" title="Edit">
                                                                    <i class="fas fa-edit"></i> <span>Edit</span>
                                                                </a>
                                                                <a href="viewuser?userId=${u.userId}" class="action-btn btn-view" title="View">
                                                                    <i class="fas fa-eye"></i> <span>View</span>
                                                                </a>
                                                                <a href="deleteuser?userId=${u.userId}" class="action-btn btn-delete" title="Delete" onclick="return confirm('Are you sure you want to delete this user?')">
                                                                    <i class="fas fa-trash-alt"></i> <span>Delete</span>
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
								</div>
							</div>
						</div>
						<!-- End Reports -->
					</div>
				</div>
				<!-- End Left side columns -->
			</div>
		</section>
	</main>
	<!-- main content end  -->

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<!-- DataTables JS -->
 	<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
  
	<script type="text/javascript">
	$(document).ready(function() {
		let table = $('#myTable').DataTable({
			pagingType: "full_numbers",
			lengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
			pageLength: 10,
			responsive: true,
			language: {
				search: "_INPUT_",
				searchPlaceholder: "Search users...",
				lengthMenu: "Show _MENU_ users per page",
				zeroRecords: "No matching users found",
				info: "Showing _START_ to _END_ of _TOTAL_ users",
				infoEmpty: "No users available",
				infoFiltered: "(filtered from _MAX_ total users)",
				paginate: {
					first: "<i class='fas fa-angle-double-left'></i>",
					last: "<i class='fas fa-angle-double-right'></i>",
					next: "<i class='fas fa-angle-right'></i>",
					previous: "<i class='fas fa-angle-left'></i>"
				}
			},
			dom: '<"top"<"row"<"col-md-6"l><"col-md-6"f>>>rt<"bottom"<"row"<"col-md-6"i><"col-md-6"p>>>',
			initComplete: function() {
				$('.dataTables_filter input').addClass('form-control');
				$('.dataTables_length select').addClass('form-select');
			}
		});
	});
	</script>

</body>
</html>