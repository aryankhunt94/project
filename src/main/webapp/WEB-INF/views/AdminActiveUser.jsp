<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link href="https://cdn.datatables.net/buttons/3.2.2/css/buttons.bootstrap5.min.css" rel="stylesheet"/>
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
                                                   
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${User }" var="u">
                                                    <tr>
                                                        <td>${u.firstName}</td>
                                                        <td>${u.lastName}</td>
                                                        <td>${u.gender}</td>
                                                        <td>${u.email}</td>
                                                        <td>${u.contactNumber}</td>
                                                        <td>${u.birthDate}</td>
                                                        
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
	
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

<!-- ✅ DataTables Export Buttons -->
<script src="https://cdn.datatables.net/buttons/3.2.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/3.2.2/js/buttons.print.min.js"></script>

<!-- ✅ Export support libraries -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
	
	
	<script type="text/javascript">

	$(document).ready(function () {
	    new DataTable('#myTable', {
	        layout: {
	            topStart: {
	                buttons: ['copy', 'csv', 'excel', 'pdf', 'print']
	            }
	        }
	    });
	});
	</script>

</body>
</html>