<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
      
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #007bff;
        }

        .checkout-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .container {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color:  #ffa500;
    border: 1px solid #ced4da;
    border-radius: 5px;
}

h2 {
    color: #007bff;
}

.form-group {
    margin-bottom: 20px;
}

label {
    font-weight: bold;
}

input[type="text"],
input[type="email"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ced4da;
    border-radius: 5px;
}

button[type="submit"] {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}

        /* Add more styles as needed */
    </style>
</head>
<body>

<div class="container mt-5">
   
    <p>Please fill out your details to complete the purchase:</p>
    <form action="process_order.php" method="post">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>
        <button type="submit" class="btn btn-primary">Place Order</button>
    </form>
</div>

</body>
</html>
