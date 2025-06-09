<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;  /* Horizontal center */
            align-items: center;      /* Vertical center */
            background-color: #f0f0f0;
        }

        .form-container {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            min-width: 320px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        input[type="text"],
        input[type="email"] {
            padding: 8px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-left: 10px;
        }

        input[type="submit"] {
            margin-top: 15px;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Event Registration</h2>
    <form action="register" method="post">
        <label>Name:
            <input type="text" name="name" required>
        </label>
        <label>Email:
            <input type="email" name="email" required>
        </label>
        <label>Event:
            <input type="text" name="event" required>
        </label>
        <input type="submit" value="Register">
    </form>
</div>

</body>
</html>
