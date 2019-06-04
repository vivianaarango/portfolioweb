<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../css/login.css">
    </head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
                {{ form('index/login', 'role': 'form', 'class':'login100-form validate-form') }}
					<div class="logo">
                        <center><a href='' target='_blank'><img border="0" src="../images/Log01.png" width="250" height="100"></a></center>
                    </div>

					<div style='margin-top: 20px;'class="wrap-input100 validate-input m-b-16" data-validate="Please enter email: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
					</div>
                    <br>
					<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
                    <br>
					<div class="container-login100-form-btn">
						<button type='submit' class="login100-form-btn">
							Ingresar
						</button>
					</div>
                {{ end_form() }} 
			</div>
		</div>
	</div>
</body>
</html>

<script src="../js/jquery-3.1.0.min.js"></script>


                                                        