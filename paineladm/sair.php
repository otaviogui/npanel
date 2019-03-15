<?php
	session_start();
	
	unset(
		$_SESSION['usuarioId'],
		$_SESSION['usuarioNome'],
		$_SESSION['usuarioNiveisAcessoId'],
		$_SESSION['usuarioEmail'],
		$_SESSION['usuarioSenha']
	);
	
	$_SESSION['logindeslogado'] = "<div class='col-md-6 offset-md-3'><div class='alert alert-success text-center' role='alert'><span class='badge badge-pill badge-light text-center'>!</span> Deslogado com sucesso!</div></div>";
	//redirecionar o usuario para a página de login
	header("Location: login.php");
?>