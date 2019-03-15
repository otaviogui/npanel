<?php
	session_start();
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
		<link rel="stylesheet" href="../css/estilopage.css"/>
		<meta charset="utf-8">
		<meta name="description" content="MarkingPlace a todo lugar, a todo vapor!">
		<meta name="author" content="Nicollas Silva">
		<meta name="keywords" content="Hacking, Invasão, Python, C, C++, PHP, MySQL, Intrusão de Redes Wireless, Inteligência Artificial">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login - NPanel</title>
	</head>
<body>
<div class="container-fluid">
	<div class="col-md-6 offset-md-3 top">
		<div class="d-block p-4 bg-success text-white text-center font-weight-bolder rounded-top">Painel de Administração NPanel</div>
			<div class="d-block p-4 bg-dark text-white text-center font-weight-bolder rounded-bottom">
				<form class="form-signin" method="POST" action="../global/valida.php">
					<div class="input-group flex-nowrap">
						<div class="input-group-prepend">
    					<span class="input-group-text" id="addon-wrapping">#</span>
						</div>
						<input type="email" name="email" id="inputEmail" class="form-control" placeholder="Exemplo: iNicollas" aria-label="Username" aria-describedby="addon-wrapping" autofocus>
					</div>
					<div class="input-group flex-nowrap">
						<div class="input-group-prepend">
    					<span class="input-group-text pular" id="addon-wrapping">$</span>
						</div>
						<input type="password" name="senha" id="inputPassword" class="form-control pular" placeholder="Exemplo: 123" aria-label="Password" aria-describedby="addon-wrapping">
					</div>
				<input type="submit" class="btn btn-success mx-auto d-block pular1" data-toggle="button" aria-pressed="false" autocomplete="off" value="Entrar">
			</form>
		</div>
	</div>
	<p class="text-center text-danger position-absolute erro">
			<?php if(isset($_SESSION['loginErro'])){
				echo $_SESSION['loginErro'];
				unset($_SESSION['loginErro']);
			}?>
		</p>
		<p class="text-center text-success position-absolute erro">
			<?php 
			if(isset($_SESSION['logindeslogado'])){
				echo $_SESSION['logindeslogado'];
				unset($_SESSION['logindeslogado']);
			}
			?>
		</p>
</div>
</body>
</html>