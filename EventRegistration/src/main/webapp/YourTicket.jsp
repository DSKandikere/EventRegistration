<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Ticket</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;   /* horizontal center */
            align-items: center;       /* vertical center */
            background-color: #f4f4f4;
        }

        .ticket-container {
            text-align: center;
            background-color: #fff;
            padding: 30px 50px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #28a745;
            margin-bottom: 10px;
        }

        p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.2s ease-in-out;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="ticket-container"> 
    <h1>Registration Successful!</h1>
    <p>Thank you for registering. Your ticket has been generated.</p>
    <a href="Register.jsp">Register Another</a>
</div>

</body>
</html>

