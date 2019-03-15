<?php
	session_start();
	$nomepainel = "NPanel";
?>
<!DOCTYPE html>
<html>
	<head>
    <link rel="shortcut icon" href="../imagens/icons/iconUser.png">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="
		sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="../css/estilopage.css"/>
		<meta charset="utf-8">
		<meta name="description" content="NPanel - V1.0">
		<meta name="author" content="Nicollas Silva">
		<meta name="keywords" content="Painel de gerenciamento para Fã-Sites Habbo!">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Painel de Gerenciamento - <?php echo $nomepainel ?></title>
	</head>
	<script>
		$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
<body>
	<div class="container-fluid">
		<div class="col-md-3 offset-md-auto position-absolute">
			<a href="" class="position-absolute" data-toggle="tooltip" data-placement="right" title="Administrado por <?php echo $_SESSION['usuarioNick']; ?>"><img src="../imagens/icons/paginaPrincipal.png" style="margin-left: 2vh; margin-top: 1vh;"></a>
			<div class="d-block p-2 bg-dark text-white text-center rounded-top"><h6>Perfil do Administrador</h6></div>
					<div class="img-perso position-absolute offset-md-8" style="z-index: 1;"><img src="https://www.habbo.com.br/habbo-imaging/avatarimage?img_format=gif&user=<?php echo $_SESSION['usuarioNick']; ?>&action=crr=3&direction=4&head_direction=4&gesture=sml&size=l" style="margin-top: -11vh;" data-toggle="tooltip" data-placement="left" title="<?php echo $_SESSION['usuarioNick']; ?>"></div>
				<div class="d-block p-2 bg-light text-white shadow rounded-bottom"><!--Bem vindo, <?php echo $_SESSION['usuarioNome']; ?><a href="sair.php">Sair</a>-->
					<div class="input-group input-group-sm mb-3">
  						<div class="input-group-prepend">
    					<span class="input-group-text" id="inputGroup-sizing-sm">ID</span>
  					</div>
  						<input type="text" class="form-control" aria-label="Nome" aria-describedby="inputGroup-sizing-sm" placeholder="<?php echo $_SESSION['usuarioId']; ?>" readonly>
				</div>
					<div class="input-group input-group-sm mb-3 top2">
  						<div class="input-group-prepend">
   						<span class="input-group-text" id="inputGroup-sizing-sm">Nome</span>
  					</div>
  						<input type="text" class="form-control" aria-label="ID" aria-describedby="inputGroup-sizing-sm" placeholder="<?php echo $_SESSION['usuarioNome']; ?>" readonly>
				</div>
					<div class="input-group input-group-sm mb-3 top2">
  						<div class="input-group-prepend">
    					<span class="input-group-text" id="inputGroup-sizing-sm">Email</span>
  					</div>
  						<input type="text" class="form-control" aria-label="ID" aria-describedby="inputGroup-sizing-sm" placeholder="<?php echo $_SESSION['usuarioEmail']; ?>" readonly>
				</div>
			<a class="btn btn-danger" href="#" role="button" data-toggle="tooltip" data-placement="top" title="Deslogar"><img src="../imagens/icons/botaoSair.png" data-toggle="modal" data-target="#confirmaSair"></a>
			<!-- Modal -->
			<div class="modal fade" id="confirmaSair" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  				<div class="modal-dialog" role="document">
    				<div class="modal-content">
     				<div class="modal-header bg-danger">
        			<h5 class="modal-title text-light" id="exampleModalLabel">Você realmente deseja sair?</h5>
        			<button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
         			<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      		<div class="modal-body text-secondary">
        	Ei <?php echo $_SESSION['usuarioNick']; ?>, confirme que estará deslogando do painel de gerenciamento.<br><strong>Isso te fará voltar para a index!</strong>
      		</div>
      	<div class="modal-footer">
        <button type="button" class="btn btn-light" data-dismiss="modal">Voltar</button>
        <a href="sair.php"><button type="button" class="btn btn-success">Confirmar</button></a>
      </div>
    </div>
  </div>
</div>
			<a class="btn btn-warning text-white" href="trocasenha.php" role="button" data-toggle="tooltip" data-placement="top" title="Mudar senha"><img src="../imagens/icons/trocarSenha.png"></a>
			<a class="btn btn-info" href="trocaemail.php" role="button" data-toggle="tooltip" data-placement="top" title="Mudar email"><img src="../imagens/icons/mudarEmail.png"></a>
			<a class="btn btn-light" href="trocanick.php" role="button" data-toggle="tooltip" data-placement="top" title="Trocar nome"><img src="../imagens/icons/iconUser.png"></a>
		</div>
	</div>
	<div class="col-md-6 offset-md-4">
	<nav class="navbar navbar-expand-lg navbar-dark bg-secondary rounded-bottom">
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.php"><img src="../imagens/icons/iconePrincipal.png"> Início <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <img src="../imagens/icons/iconeNoticias.png"> Notícias
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item bg-success text-white" href="criarnoticia.php">Criar nova notícia</a>
          <a class="dropdown-item" href="#">Editar/excluir notícias</a>
          <a class="dropdown-item" href="#">Configurações das notícias</a>
        </div>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <img src="../imagens/icons/iconeUsuarios.gif"> Usuários
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item bg-warning text-white" href="#">Procurar usuário</a>
          <a class="dropdown-item" href="#">Editar perfil</a>
          <a class="dropdown-item text-danger" href="#">Banir usuário</a>
          <a class="dropdown-item text-info" href="#">Alertar usuário</a>
          <a class="dropdown-item text-success" href="#">Usuário destaque</a>
          <a class="dropdown-item" href="#">Dar/tirar cargo</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="../imagens/icons/iconeSlides.png" width="19px"> Slides
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item bg-success text-white" href="#">Criar novo slide</a>
          <a class="dropdown-item" href="#">Editar/excluir slide</a>
          <a class="dropdown-item" href="#">Configurações dos slides</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="../imagens/icons/iconeForum.gif"> Fórum
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item bg-success text-white" href="#">Criar post fixo</a>
          <a class="dropdown-item" href="#">Listar posts</a>
          <a class="dropdown-item text-danger" href="#">Banir usuário do fórum</a>
          <a class="dropdown-item" href="#">Adicionar/remover categorias</a>
          <a class="dropdown-item" href="#">Configurações do fórum</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="../imagens/icons/iconeRadio.png" width="19px"> Rádio
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item bg-success text-white" href="#">Gerar código de presença</a>
          <a class="dropdown-item" href="#">Ativar piloto automático</a>
          <a class="dropdown-item" href="#">Painel de pedidos</a>
          <a class="dropdown-item" href="#">Configurações da rádio</a>
        </div>
      </li>
    </ul>
  </div>
</nav>
</div>
</div>
</body>
</html>
