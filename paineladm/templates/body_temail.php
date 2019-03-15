	<div class="col-md-8 offset-md-3" style="margin-top: -35vh;">
		<div class="d-block p-2 bg-info text-white text-center rounded-top top4 border-top border-right border-left"><h6> Alteração do Email</h6></div>
		<div class="d-block p-2 bg-white rounded-bottom text-center shadow">Caro, <?php echo $_SESSION['usuarioNick']; ?>
			<br/>Para alterar seu email basta preencher os formulários abaixo.
			<br/><strong>O novo email deverá ser verdadeiro, e com isso, contamos com um sistema de verificação.</strong>
	<div class="input-group flex-nowrap offset-md-4">
						<div class="input-group-prepend">
    					<span class="input-group-text form-control" id="addon-wrapping">@antigo</span>
						</div>
						<input type="Email" name="velhoEmail" id="inputEmail" class="col-sm-2 form-control" placeholder="" aria-label="velhoEmail" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap offset-md-4">
						<div class="input-group-prepend">
    					<span class="input-group-text form-control pular" id="addon-wrapping">@novo</span>
						</div>
						<input type="Email" name="newEmail" id="inputEmail" class="col-sm-2 form-control pular" placeholder="" aria-label="newEmail" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap offset-md-4">
						<div class="input-group-prepend">
    					<span class="input-group-text form-control pular" id="addon-wrapping">@ConfirmaNovo</span>
						</div>
						<input type="Email" name="newEmail" id="inputEmail" class="col-sm-2 form-control pular" placeholder="" aria-label="newEmail" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap offset-md-4">
						<div class="input-group-prepend">
    					<span class="input-group-text form-control pular" id="addon-wrapping">@Senha</span>
						</div>
						<input type="password" name="senha" id="inputPassword" class="col-sm-2 form-control pular" placeholder="" aria-label="senha" aria-describedby="addon-wrapping">
					</div>
					<input type="submit" class="btn btn-success col-md-3 offset-md-4 d-block pular1" data-toggle="button" aria-pressed="false" autocomplete="off" value="Trocar senha">
		</div>
	</div>