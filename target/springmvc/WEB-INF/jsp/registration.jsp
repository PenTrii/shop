<!DOCTYPE html>
<html>
 <head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <meta name="description" content="">
   <meta name="author" content="">
   <title>Sign up</title>

    <script src="javascript/jquery-3.3.1.min.js"></script>
    <script src="javascript/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="styles/bootstrap.min.css">

</head>
<body class="text-center">

        <form action="registration/authenticate" method="POST">
            User:<br>
            <input type="text" name="username" id="username">
            <br>
            Pass:<br>
            <input type="password" name="password" id="password">
            <br>
            Confirm Pass:<br>
            <input type="password" name="confirm_password" id="confirm_password">
            <br>
            Full name:<br>
            <input type="text" name="fullname" id="fullname">
            <br>
            <br>
           <button type="submit" class="btn btn-primary"id="password_modal_save">Save</button>
        </form>

</body>
</html>
