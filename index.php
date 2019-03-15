<?php
	session_start();
?>
<html>
	<head>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/login.js"></script>
    	<link rel="shortcut icon" href="imagens/icons/iconUser.png">
		<link rel="stylesheet" href="css/style.css"/>
		<meta charset="utf-8">
		<meta name="description" content="NPanel - Gerenciador de Notícias">
		<meta name="author" content="Nicollas Silva">
		<meta name="keywords" content="NPanel">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>NPanel</title>
	</head>
<body>
	<div class="container-fluid">
				<a href="paineladm/login.php">
			<buttom class="btn btn-info text-white shadow col-md-2 offset-md-5 position-absolute">
				Painel Administrativo
			</buttom>
		</a>
			<div class="col-md-2">
			<img src="imagens/logoatual.png" style="width: 400px; margin-top: 10vh;" class="position-absolute"></div>
			<div class="text-center position-absolute" style="padding:25vh 13vh">
	<div class="logo">Faça seu login</div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="login-form" class="text-left">
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="lg_username" class="sr-only">Seu nick</label>
						<input type="text" class="form-control" id="lg_username" name="lg_username" placeholder="Login" required>
					</div>
					<div class="form-group">
						<label for="lg_password" class="sr-only">Password</label>
						<input type="password" class="form-control" id="lg_password" name="lg_password" placeholder="Senha" required>
					</div>
					<div class="form-group login-group-checkbox">
						<input type="checkbox" id="lg_remember" name="lg_remember">
						<label for="lg_remember">remember</label>
					</div>
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
			</div>
			<div class="etc-login-form">
				<p>Novo por aqui? <a href="#">Crie sua conta</a></p>
				<p>Esqueceu a senha? <a href="#" data-toggle="modal" data-target="#esqueceuSenha">Recuperar</a></p>
			</div>
		</form>
	</div>
		</div>
		<!-- Modal -->
			<div class="modal fade" id="esqueceuSenha" tabindex="-1" role="dialog" aria-labelledby="esqueceuSenha" aria-hidden="true">
  				<div class="modal-dialog" role="document">
    				<div class="modal-content">
     				<div class="modal-header bg-info">
        			<h5 class="modal-title text-light" id="exampleModalLabel">Recuperar senha</h5>
        			<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
         			<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      				<div class="text-center" style="padding:50px 0">
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="forgot-password-form" class="text-left">
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="fp_email" class="sr-only">Email address</label>
						<input type="text" class="form-control" id="fp_email" name="fp_email" placeholder="email address">
					</div>
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
			</div>
		</form>
	</div>
	</div>
      	<div class="modal-footer">
        <button type="button" class="btn btn-light" data-dismiss="modal">Voltar</button>
        <a href="sair.php"><button type="button" class="btn btn-success">Confirmar</button></a>
      </div>
    </div>
  </div>
</div>
<footer class="page-footer position-absolute rounded offset-md-5 text-center">

    <div style=" margin-top: 89vh">

          <!-- Grid column -->
          <div class="col-md-6 col-lg-12 text-white">
            <h6 class="mb-0">Feito com <font color="#ff0000">&hearts;</font> por iNicollas.</h6>
          </div>
</body>
</html>
