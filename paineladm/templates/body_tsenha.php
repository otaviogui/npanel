	<div class="col-md-8 offset-md-3" style="margin-top: -35vh;">
		<div class="d-block p-2 bg-warning text-white text-center rounded-top top4 border-top border-right border-left"><h6>Alterar senha</h6></div>
		<div class="d-block p-2 bg-white rounded-bottom text-center shadow">Caro, <?php echo $_SESSION['usuarioNick']; ?>
			<br/>Para alterar sua senha basta preencher os formulários abaixo.
			<br/><strong>Guarde bem a nova senha pois será reestabelecido 48h de espera após essa atual troca para que você possa trocar novamente.</strong>
	<div class="input-group flex-nowrap offset-md-4">
						<div class="input-group-prepend">
    					<span class="input-group-text form-control" id="addon-wrapping">Senha antiga</span>
						</div>
						<input type="password" name="oldPassword" id="inputPassword" class="col-sm-2 form-control" placeholder="" aria-label="oldPassword" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap offset-md-4">
						<div class="input-group-prepend">
    					<span class="input-group-text form-control pular" id="addon-wrapping">Nova Senha</span>
						</div>
						<input type="password" name="newPassword" id="inputPassword" class="col-sm-2 form-control pular" placeholder="" aria-label="newPassword" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap offset-md-4">
						<div class="input-group-prepend">
    					<span class="input-group-text form-control pular" id="addon-wrapping">Confirmar senha</span>
						</div>
						<input type="password" name="newPassword" id="inputPassword" class="col-sm-2 form-control pular" placeholder="" aria-label="newPassword" aria-describedby="addon-wrapping">
					</div>
					<input type="submit" class="btn btn-success col-md-3 offset-md-4 d-block pular1" data-toggle="button" aria-pressed="false" autocomplete="off" value="Trocar senha">
		</div>
	</div>