<?php
	session_start();	
	include_once("conexao.php");	
	if((isset($_POST['email'])) && (isset($_POST['senha']))){
		$usuario = mysqli_real_escape_string($conn, $_POST['email']);
		$senha = mysqli_real_escape_string($conn, $_POST['senha']);
		$senha = md5($senha);
			
		$result_usuario = "SELECT * FROM usuarios WHERE email = '$usuario' && senha = '$senha' LIMIT 1";
		$resultado_usuario = mysqli_query($conn, $result_usuario);
		$resultado = mysqli_fetch_assoc($resultado_usuario);
		
		if(isset($resultado)){
			$_SESSION['usuarioId'] = $resultado['id'];
			$_SESSION['usuarioNome'] = $resultado['nome'];
			$_SESSION['usuarioNick'] = $resultado['nick'];
			$_SESSION['usuarioNiveisAcessoId'] = $resultado['niveis_acesso_id'];
			$_SESSION['usuarioEmail'] = $resultado['email'];
			if($_SESSION['usuarioNiveisAcessoId'] == "1"){
				header("Location: ../paineladm/index.php");
			}elseif($_SESSION['usuarioNiveisAcessoId'] == "2"){
				header("Location: colaborador.php");
			}else{
				header("Location: cliente.php");
			}
		}else{	
			$_SESSION['loginErro'] = "<div class='col-md-6 offset-md-3'><div class='alert alert-danger text-center' role='alert'><span class='badge badge-pill badge-light text-center'>!</span> Usuário ou senha inválidos.</div></div>";
			header("Location: ../paineladm/login.php");
		}
	}else{
		$_SESSION['loginErro'] = "<div class='col-md-6 offset-md-3'><div class='alert alert-danger text-center' role='alert'><span class='badge badge-pill badge-light text-center'>!</span> Usuário ou senha inválidos.</div></div>";
		header("Location: ../paineladm/login.php");
	}
?>