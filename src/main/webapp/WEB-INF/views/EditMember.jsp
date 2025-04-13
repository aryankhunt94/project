<%--  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .edit-container {
            max-width: 320px;
            margin: 90px auto;
            background: #fff;
            padding: 15px;
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
</head>
<body>
    <div class="container">
        <div class="edit-container">
            <h4 class="text-center mb-3">Edit Member</h4>

            <form action="updatemember" method="post">
                <input type="hidden" name="memberId" value="${member.memberId}" />

                <div class="mb-2">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" name="memberName" value="${member.memberName}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">Age</label>
                    <input type="number" class="form-control" name="age" value="${member.age}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">Profile Photo URL</label>
                    <input type="text" class="form-control" name="profilePhoto" value="${member.profilePhoto}" required>
                </div>

                <button type="submit" class="btn btn-primary btn-custom">Update</button>
                <a href="listmembers" class="btn btn-secondary btn-custom mt-1">Cancel</a>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> 
 --%>
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* General Styles */
        body {
            background: linear-gradient(135deg, #1e3c72, #2a5298); /* Blueish gradient */
            color: #fff;
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .edit-container {
            max-width: 400px;
            width: 100%;
            background: rgba(255, 255, 255, 0.1);
            padding: 25px;
            border-radius: 15px;
            box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(10px);
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h4 {
            font-size: 1.5rem;
            font-weight: 600;
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .form-label {
            font-size: 14px;
            color: #fff;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #fff;
            box-shadow: 0 0 8px rgba(255, 255, 255, 0.5);
            background: rgba(255, 255, 255, 0.2);
        }

        .btn-custom {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            font-weight: 500;
            border: none;
            border-radius: 8px;
            transition: transform 0.3s ease, background 0.3s ease;
        }

        .btn-primary {
            background: #6a1b9a; /* Purple color */
            color: #fff;
        }

        .btn-primary:hover {
            background: #4a148c; /* Darker purple */
            transform: translateY(-3px);
        }

        .btn-secondary {
            background: #2ed573; /* Green color */
            color: #fff;
        }

        .btn-secondary:hover {
            background: #1dd1a1;
            transform: translateY(-3px);
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            .edit-container {
                padding: 20px;
            }

            h4 {
                font-size: 1.2rem;
            }

            .form-control {
                font-size: 13px;
            }

            .btn-custom {
                font-size: 13px;
            }
        }
    </style>
</head>
<body>
    <div class="edit-container">
        <h4>Edit Member</h4>

        <form action="updatemember" method="post">
            <input type="hidden" name="memberId" value="${member.memberId}" />

            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="memberName" value="${member.memberName}" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Age</label>
                <input type="number" class="form-control" name="age" value="${member.age}" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Profile Photo URL</label>
                <input type="text" class="form-control" name="profilePhoto" value="${member.profilePhoto}" required>
            </div>

            <button type="submit" class="btn btn-primary btn-custom">Update</button>
            <a href="listmembers" class="btn btn-secondary btn-custom mt-2">Cancel</a>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>