<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


</head>
<body>
 	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

<main id="main" class="main">
        <div class="pagetitle">
            <h1>List of Members</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
                    <li class="breadcrumb-item active">Members</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard">
            <div class="row" style="min-height: 500px;">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">All Members</h5>

                            <div id="myTable_wrapper" class="dataTables_wrapper no-footer"><div class="dataTables_length" id="myTable_length"><label>Show <select name="myTable_length" aria-controls="myTable" class=""><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div><div id="myTable_filter" class="dataTables_filter"><label>Search:<input type="search" class="" placeholder="" aria-controls="myTable"></label></div><table class="table table-hover table-bordered dataTable no-footer" id="myTable" role="grid" aria-describedby="myTable_info">
                                <thead class="table-dark">
                                    <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Member: activate to sort column descending" style="width: 362.069px;">Member</th><th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 97.6802px;">Age</th><th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-label="Profile: activate to sort column ascending" style="width: 174.819px;">Profile</th><th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-label="Action: activate to sort column ascending" style="width: 407.208px;">Action</th></tr>
                                </thead>
                                
                               
                                <tbody>
                                   <c:forEach items="${memberlist }" var="m">  
                                <tr>
                                
                                            <td>${m.memberName }</td>
				                            <td>${m.age}</td>
				                            <td>${m.profilePhoto }</td>
                                            <td>
                                                <a href="editmember?memberId=${m.memberId }" class="btn btn-warning btn-sm">Edit</a>
                                                <a href="deletemember?memberId=${m.memberId }" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</a>
                                                <a href="viewmember?memberId=${m.memberId }" class="btn btn-info btn-sm">View</a>
                                            </td>
                                           
                                    </tr> 
                                     </c:forEach>  
                                    </tbody>
                            </table><div class="dataTables_info" id="myTable_info" role="status" aria-live="polite">Showing 1 to 10 of 16 entries</div><div class="dataTables_paginate paging_simple_numbers" id="myTable_paginate"><a class="paginate_button previous disabled" aria-controls="myTable" data-dt-idx="0" tabindex="0" id="myTable_previous">Previous</a><span><a class="paginate_button current" aria-controls="myTable" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="myTable" data-dt-idx="2" tabindex="0">2</a></span><a class="paginate_button next" aria-controls="myTable" data-dt-idx="3" tabindex="0" id="myTable_next">Next</a></div></div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>



	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
 
 

	<script type="text/javascript">

	$( document ).ready(function() {
		let table = new DataTable('#myTable',{
			 
		});
	});
	</script> 

</body>
</html>  --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Admin | List User</title>

    <!-- Include CSS -->
    <jsp:include page="AdminCss.jsp"></jsp:include>

    <!-- DataTables CSS -->
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>

    <!-- Custom Styles -->
    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #1e3c72, #2a5298); /* Blueish gradient */
            color: #fff;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        .pagetitle {
            margin-bottom: 20px;
        }

        .pagetitle h1 {
            font-size: 2rem;
            font-weight: 600;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .breadcrumb {
            background: rgba(255, 255, 255, 0.1);
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .breadcrumb-item a {
            color: #fff;
            text-decoration: none;
        }

        .breadcrumb-item.active {
            color: #ff6b6b; /* Red color for active breadcrumb */
        }

        .card {
            background: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 15px;
            box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 0px 40px rgba(255, 255, 255, 0.2);
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: 600;
            color: #fff;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .table {
            color: #fff;
            border-collapse: separate;
            border-spacing: 0 10px;
        }

        .table thead th {
            background: rgba(0, 0, 0, 0.3); /* Semi-transparent header */
            border: none;
            font-weight: 500;
            padding: 15px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .table tbody tr {
            background: rgba(255, 255, 255, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .table tbody tr:hover {
            transform: translateX(10px);
            box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.2);
        }

        .table tbody td {
            padding: 15px;
            vertical-align: middle;
        }

        .btn {
            padding: 8px 15px;
            border-radius: 8px;
            font-weight: 500;
            transition: transform 0.3s ease, background 0.3s ease;
        }

        .btn-warning {
            background: #ff9f43; /* Orange color */
            border: none;
        }

        .btn-warning:hover {
            background: #ff7f00;
            transform: translateY(-3px);
        }

        .btn-danger {
            background: #ff6b6b; /* Red color */
            border: none;
        }

        .btn-danger:hover {
            background: #ff4757;
            transform: translateY(-3px);
        }

        .btn-info {
            background: #2ed573; /* Green color */
            border: none;
        }

        .btn-info:hover {
            background: #1dd1a1;
            transform: translateY(-3px);
        }

        /* DataTables Custom Styles */
        .dataTables_length,
        .dataTables_filter,
        .dataTables_info,
        .dataTables_paginate {
            color: #fff !important; /* White text for all DataTables controls */
        }

        .dataTables_length select,
        .dataTables_filter input {
            background: rgba(255, 255, 255, 0.1);
            color: #fff !important;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 5px;
            padding: 5px;
        }

        .dataTables_length select option {
            background: #2a2a40; /* Dark background for dropdown options */
            color: #fff;
        }

        .dataTables_paginate .paginate_button {
            color: #fff !important;
            padding: 5px 10px;
            border-radius: 5px;
            margin: 0 2px;
            transition: background 0.3s ease;
        }

        .dataTables_paginate .paginate_button:hover {
            background: rgba(255, 255, 255, 0.1);
        }

        .dataTables_paginate .paginate_button.current {
            background: #6a1b9a; /* Purple color for active page */
            color: #fff !important;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .pagetitle h1 {
                font-size: 1.5rem;
            }

            .card-title {
                font-size: 1.2rem;
            }

            .table thead th {
                font-size: 0.9rem;
            }

            .table tbody td {
                font-size: 0.9rem;
            }

            .btn {
                padding: 6px 12px;
                font-size: 0.8rem;
            }
        }
    </style>
</head>
<body>
    <!-- Include Header and Sidebar -->
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>

    <!-- Main Content -->
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>List of Members</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                    <li class="breadcrumb-item active">Members</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard">
            <div class="row" style="min-height: 500px;">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">All Members</h5>

                            <div id="myTable_wrapper" class="dataTables_wrapper no-footer">
                                <div class="dataTables_length" id="myTable_length">
                                    <label>Show 
                                        <select name="myTable_length" aria-controls="myTable" class="">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select> entries
                                    </label>
                                </div>
                                <div id="myTable_filter" class="dataTables_filter">
                                    <label>Search:
                                        <input type="search" class="" placeholder="" aria-controls="myTable">
                                    </label>
                                </div>
                                <table class="table table-hover table-bordered dataTable no-footer" id="myTable" role="grid" aria-describedby="myTable_info">
                                    <thead class="table-dark">
                                        <tr role="row">
                                            <th class="sorting_asc" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" aria-sort="ascending" style="width: 362.069px;">Member</th>
                                            <th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" style="width: 97.6802px;">Age</th>
                                            <th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" style="width: 174.819px;">Profile</th>
                                            <th class="sorting" tabindex="0" aria-controls="myTable" rowspan="1" colspan="1" style="width: 407.208px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${memberlist }" var="m">
                                            <tr>
                                                <td>${m.memberName}</td>
                                                <td>${m.age}</td>
                                                <td>${m.profilePhoto}</td>
                                                <td>
                                                    <a href="editmember?memberId=${m.memberId}" class="btn btn-warning btn-sm">Edit</a>
                                                    <a href="deletemember?memberId=${m.memberId}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</a>
                                                    <a href="viewmember?memberId=${m.memberId}" class="btn btn-info btn-sm">View</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <div class="dataTables_info" id="myTable_info" role="status" aria-live="polite">Showing 1 to 10 of 16 entries</div>
                                <div class="dataTables_paginate paging_simple_numbers" id="myTable_paginate">
                                    <a class="paginate_button previous disabled" aria-controls="myTable" data-dt-idx="0" tabindex="0" id="myTable_previous">Previous</a>
                                    <span>
                                        <a class="paginate_button current" aria-controls="myTable" data-dt-idx="1" tabindex="0">1</a>
                                        <a class="paginate_button" aria-controls="myTable" data-dt-idx="2" tabindex="0">2</a>
                                    </span>
                                    <a class="paginate_button next" aria-controls="myTable" data-dt-idx="3" tabindex="0" id="myTable_next">Next</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Include Footer and JS -->
    <jsp:include page="AdminFooter.jsp"></jsp:include>
    <jsp:include page="AdminJs.jsp"></jsp:include>

    <!-- jQuery and DataTables -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            let table = new DataTable('#myTable', {});
        });
    </script>
</body>
</html>


