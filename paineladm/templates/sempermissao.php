<?php

?>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="utf-8">
    	<link rel="shortcut icon" href="../../imagens/icons/iconUser.png">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="
		sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
			<title>Sem permissão!</title>
			<style>
			body {
				background: url(../../imagens/background-sp.png);
			}
			.left {
				margin-left: -65vh;
			}
		</style>
		</head>
	<body>
		<div class="col-md-8 offset-md-2" style="margin-top: 15vh;">
		<div class="d-block p-2 bg-danger text-white text-center rounded-top top4 border-top border-right border-left">
			<img src="../../imagens/cadeado.png" class="position-absolute left">
				<h6>
					<strong>SEM PERMISSÃO</strong>
				</h6>
		</div>
		<div class="d-block p-2 bg-white rounded-bottom text-center shadow">Você <strong>não</strong> tem permissão para entrar nesse link.
			<br/>
			<a href="login.php">
				<button class="btn btn-danger col-md-2">Voltar</button>
			</a>
		</div>
</div>
</body>
</html>