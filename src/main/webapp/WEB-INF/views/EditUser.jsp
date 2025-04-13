<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Edit User Detail</h2>
		<form action="updateuser" method="post">
		
		<label>User No</label>
		<input type="text" name="userId" value="${user.userId }"/><br><br>
		
		<label>First Name</label>
	    <input type="text" name="firstName" value="${user.firstName }"><br><br>
	    
	    <label>Last Name</label>
	    <input type="text" name="lastName" value="${user.lastName }"><br><br>
	    

	    <label>Gender</label>
	    
	    	: Male <input type="radio" name="gender" value="male">
	       Female<input type="radio" name="gender" value="female"><br><br>

	    <label>Email</label>
	    <input type="text" name="email" value="${user.email }" ><br>
	    <br>
	    
	    <label>Contact Number</label>
	    <input type="text" name="contactNum" value="${user.contactNum }" ><br>
	    <br>
	    
	    <label>Born Year</label>
	    <input type="text" name="born" value="${user.born }" ><br>
	    <br>

	    <input type="submit" value="Update User">
		</form>

</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .edit-container {
            max-width: 450px;
            margin: 10px auto;
            background: #fff;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            font-size: 14px;
            padding: 6px;
        }
        .btn-custom {
            width: 100%;
            font-size: 14px;
            padding: 6px;
        }
    </style>
<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


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
		 <div class="container">
        <div class="edit-container">
            <h4 class="text-center mb-3">Edit Member</h4>

            <form action="updateuser" method="post" enctype="multipart/form-data">
                <input type="hidden" name="userId" value="${user.userId}" />

                <div class="mb-2">
                    <label class="form-label">First Name</label>
                    <input type="text" class="form-control" name="firstName" value="${user.firstName}" required>
                </div>
                
                <div class="mb-2">
                    <label class="form-label">Last Name</label>
                    <input type="text" class="form-control" name="lastName" value="${user.lastName}" required>
                </div>
                
                <div class="mb-2">
                    <label class="form-label">Email</label>
                    <input type="text" class="form-control" name="email" value="${user.email}" >
                </div>

                <div class="mb-2">
                    <label class="form-label">Born</label>
                    <input type="text" class="form-control" name="birthDate" value="${user.birthDate}" >
                </div>
                
                
                <div class="mb-2">
    				<label class="form-label">Gender</label>
    					<select name="gender" class="form-select" value="${user.gender}" > 
      						  <<!-- option value="" disabled selected >Select Gender</option> -->
      						  <option value="male">Male</option>
     						   <option value="female">Female</option>
        					<option value="other">Other</option>
    				</select>
				</div>
                
                <div class="mb-2">
                    <label class="form-label">Contact No</label>
                    <input type="number" class="form-control" name="contactNumber" value="${user.contactNumber}" required>
                </div>
                <div class="mb-2">
    				<label class="form-label">Role</label>
    					<select name="role" class="form-select" value="${user.role}" > 
      						  <<!-- option value="" disabled selected >Select Gender</option> -->
      						  <option value="ADMIN">Admin</option>
     						   <option value="USER">User</option>
        					
    				</select>
				</div>
                

                <div class="mb-2">
                    <label class="form-label">Profile Photo URL</label>
                    <input type="file" class="form-control" name="profilePic"  required>
                </div>

                <button type="submit" class="btn btn-primary btn-custom">Update</button>
                <a href="listuser" class="btn btn-secondary btn-custom mt-1">Cancel</a>
            </form>
        </div>
    </div>
		
		

	</main>
	<!-- main content end  -->


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
</html>