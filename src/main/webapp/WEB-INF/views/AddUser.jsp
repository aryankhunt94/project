<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Pocket Buddy</title>
    
    <jsp:include page="AdminCss.jsp"></jsp:include>
    
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>
    
    <main id="main" class="main container">
        <div class="pagetitle">
            <h1>New Role</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                    <li class="breadcrumb-item active">New Member</li>
                </ol>
            </nav>
        </div>
        
        <section class="section dashboard">
            <div class="card p-4 shadow">
                <h4 class="mb-3">Add New User!</h4>
                <form action="saveuser" method="post" enctype="multipart/form-data" class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label">First Name</label>
                        <input type="text" name="firstName" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Last Name</label>
                        <input type="text" name="lastName" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Gender</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="male" >
                            <label class="form-check-label">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="female" >
                            <label class="form-check-label">Female</label>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Contact No</label>
                        <input type="text" name="contactNumber" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Born Year</label>
                        <input type="text" name="birthDate" class="form-control" >
                    </div>
                    <div class="col-md-12">
                        <label class="form-label">Profile Photo</label>
                        <input type="file" name="profilePic" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" class="form-control">
                    </div>	
                    
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">Signup</button>
                        <a href="login" class="btn btn-link">I already have an account</a>
                    </div>
                </form>
            </div>
        </section>
    </main>

    <jsp:include page="AdminFooter.jsp"></jsp:include>
    <jsp:include page="AdminJs.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            let table = new DataTable('#myTable');
        });
    </script>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Pocket Buddy</title>
    
    <jsp:include page="AdminCss.jsp"></jsp:include>
    
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <style>
        :root {
            --primary-color: #4361ee;
            --primary-hover: #3a56d4;
            --secondary-color: #f72585;
            --light-color: #f8f9fa;
            --dark-color: #212529;
            --gray-color: #6c757d;
            --success-color: #2ecc71;
        }
        
        body {
            background-color: #f6f9ff;
            font-family: 'Poppins', sans-serif;
        }
        
        .main {
            padding: 20px;
            transition: all 0.3s;
        }
        
        .pagetitle h1 {
            font-size: 28px;
            font-weight: 600;
            color: #012970;
            margin-bottom: 0;
        }
        
        .breadcrumb {
            font-size: 14px;
        }
        
        .breadcrumb-item.active {
            color: var(--gray-color);
        }
        
        .card {
            border: none;
            border-radius: 15px;
            transition: all 0.3s ease;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05) !important;
            background: linear-gradient(145deg, #ffffff, #f8f9fa);
        }
        
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1) !important;
        }
        
        .card h4 {
            color: #012970;
            font-weight: 600;
            font-size: 22px;
            position: relative;
            padding-bottom: 15px;
        }
        
        .card h4:after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 50px;
            background: var(--primary-color);
            border-radius: 5px;
        }
        
        .form-control {
            border-radius: 8px;
            padding: 10px 15px;
            border: 1px solid #ced4da;
            font-size: 14px;
            transition: all 0.3s;
            background-color: #fff;
        }
        
        .form-control:focus {
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
            border-color: var(--primary-color);
        }
        
        .form-label {
            color: #012970;
            font-weight: 500;
            margin-bottom: 8px;
            font-size: 14px;
        }
        
        .btn-primary {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
            padding: 10px 25px;
            border-radius: 8px;
            font-weight: 500;
            letter-spacing: 0.5px;
            transition: all 0.3s;
            box-shadow: 0 4px 10px rgba(67, 97, 238, 0.3);
        }
        
        .btn-primary:hover {
            background-color: var(--primary-hover);
            border-color: var(--primary-hover);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(67, 97, 238, 0.4);
        }
        
        .btn-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s;
        }
        
        .btn-link:hover {
            color: var(--primary-hover);
            text-decoration: underline;
        }
        
        .form-check-input:checked {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }
        
        /* Custom animation for form elements */
        .form-control, .btn {
            animation: fadeInUp 0.5s ease forwards;
            opacity: 0;
        }
        
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translate3d(0, 20px, 0);
            }
            to {
                opacity: 1;
                transform: translate3d(0, 0, 0);
            }
        }
        
        /* Animation delay for form fields */
        .col-md-6:nth-child(1) .form-control { animation-delay: 0.1s; }
        .col-md-6:nth-child(2) .form-control { animation-delay: 0.2s; }
        .col-md-6:nth-child(3) .form-check { animation-delay: 0.3s; }
        .col-md-6:nth-child(4) .form-control { animation-delay: 0.4s; }
        .col-md-6:nth-child(5) .form-control { animation-delay: 0.5s; }
        .col-md-12 .form-control { animation-delay: 0.6s; }
        .col-md-6:nth-child(7) .form-control { animation-delay: 0.7s; }
        .col-md-6:nth-child(8) .form-control { animation-delay: 0.8s; }
        .col-12 .btn { animation-delay: 0.9s; }
        
        /* Custom file input styling */
        input[type="file"] {
            position: relative;
            z-index: 2;
            width: 100%;
            height: calc(2.5rem + 2px);
            margin: 0;
            opacity: 0;
        }
        
        .form-control[type="file"] {
            height: auto;
        }
        
        .col-md-12 {
            position: relative;
        }
        
        .col-md-12::after {
            content: 'Browse Files';
            position: absolute;
            top: 35px;
            left: 15px;
            background-color: #f8f9fa;
            padding: 8px 16px;
            border-radius: 6px 0 0 6px;
            border: 1px solid #ced4da;
            border-right: none;
            font-size: 14px;
            color: #6c757d;
            z-index: 1;
        }
        
        .col-md-12::before {
            content: 'No file chosen';
            position: absolute;
            top: 35px;
            left: 120px;
            right: 15px;
            padding: 8px 16px;
            border-radius: 0 6px 6px 0;
            border: 1px solid #ced4da;
            border-left: none;
            font-size: 14px;
            color: #6c757d;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            background-color: white;
            z-index: 1;
        }
        
        /* Responsive adjustments */
        @media (max-width: 768px) {
            .card {
                padding: 15px !important;
            }
            
            .col-md-6, .col-md-12 {
                margin-bottom: 15px;
            }
        }
        
        /* Success notification */
        .form-notification {
            display: none;
            padding: 15px;
            border-radius: 8px;
            background-color: rgba(46, 204, 113, 0.2);
            border-left: 4px solid var(--success-color);
            margin-bottom: 20px;
            animation: fadeInDown 0.5s ease forwards;
        }
        
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translate3d(0, -20px, 0);
            }
            to {
                opacity: 1;
                transform: translate3d(0, 0, 0);
            }
        }
    </style>
</head>
<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>
    
    <main id="main" class="main container">
        <div class="pagetitle">
            <h1>New Role</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                    <li class="breadcrumb-item active">New Member</li>
                </ol>
            </nav>
        </div>
        
        <section class="section dashboard">
            <div class="form-notification">
                <strong><i class="bi bi-check-circle me-2"></i>Success!</strong> User registration form has been submitted successfully.
            </div>
            
            <div class="card p-4 shadow">
                <h4 class="mb-4">Add New User!</h4>
                <form id="userForm" action="saveuser" method="post" enctype="multipart/form-data" class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-person me-2"></i>First Name</label>
                        <input type="text" name="firstName" class="form-control" placeholder="Enter first name">
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-person me-2"></i>Last Name</label>
                        <input type="text" name="lastName" class="form-control" placeholder="Enter last name">
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-gender-ambiguous me-2"></i>Gender</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="male">
                            <label class="form-check-label">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="female">
                            <label class="form-check-label">Female</label>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-telephone me-2"></i>Contact No</label>
                        <input type="text" name="contactNumber" class="form-control" placeholder="Enter contact number">
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-calendar-date me-2"></i>Born Year</label>
                        <input type="text" name="birthDate" class="form-control" placeholder="Enter birth year">
                    </div>
                    
                    <div class="col-md-12">
                        <label class="form-label"><i class="bi bi-image me-2"></i>Profile Photo</label>
                        <input type="file" name="profilePic" class="form-control" id="profilePic">
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-envelope me-2"></i>Email</label>
                        <input type="email" name="email" class="form-control" placeholder="Enter email address">
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-key me-2"></i>Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Enter password">
                    </div>	
                    
                    <div class="col-md-6">
                        <label class="form-label"><i class="bi bi-key me-2"></i>Confirm Password</label>
                        <input type="password" name="confirmPassword" class="form-control" placeholder="Enter confirm password">
                    </div>	
                    
                    <div class="col-12 mt-4">
                        <button type="submit" class="btn btn-primary">
                            <i class="bi bi-person-plus me-2"></i>Signup
                        </button>
                        <a href="login" class="btn btn-link">
                            <i class="bi bi-box-arrow-in-right me-1"></i>I already have an account
                        </a>
                    </div>
                </form>
            </div>
        </section>
    </main>

    <jsp:include page="AdminFooter.jsp"></jsp:include>
    <jsp:include page="AdminJs.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            let table = new DataTable('#myTable');
            
            // File input label update
            $('#profilePic').on('change', function() {
                var fileName = $(this).val().split('\\').pop();
                if(fileName) {
                    $('.col-md-12::before').css('content', '"' + fileName + '"');
                    // Update the pseudo-element content
                    document.querySelector('.col-md-12').setAttribute('data-file', fileName);
                    // Apply inline style to override the pseudo-element
                    document.head.insertAdjacentHTML('beforeend', `
                        <style>
                            .col-md-12[data-file]::before {
                                content: "${fileName}" !important;
                            }
                        </style>
                    `);
                }
            });
            
            // Form submission (demo only)
            $('#userForm').on('submit', function(e) {
                // Comment this line to make the form actually submit
                // e.preventDefault();
                
                // Show success notification (demo only)
                // $('.form-notification').slideDown();
                
                // Hide after 5 seconds (demo only)
                // setTimeout(function() {
                //     $('.form-notification').slideUp();
                // }, 5000);
            });
            // Apply staggered animationto form controls
            $('.form-control, .btn, .form-check').each(function(index) {
                $(this).css({ 
                    'animation-delay': (index * 0.1) + 's'
                });
            });
        });
    </script>
</body>
</html>