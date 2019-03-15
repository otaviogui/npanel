	<div class="col-md-8 offset-md-3" style="margin-top: -35vh;">
		<div class="d-block p-2 bg-dark text-white text-center rounded-top top4 border-top border-right border-left"><h6>Alteração de Nick</h6></div>
		<div class="d-block p-2 bg-white rounded-bottom text-center shadow">Caro, <?php echo $_SESSION['usuarioNick']; ?>
			<br/>Para alterar seu nick você precisará mudar a sua missão do antigo nick no <strong>Habbo Hotel BR</strong> para: <div class="btn btn-info" style="cursor: auto;">PainelGerencimentoNPanel</div>
			<br/><strong>OBS:</strong> Se não colocar essa missão no seu antigo nick é impossível de ser trocado o Nick.
	<div class="input-group flex-nowrap">
						<div class="input-group-prepend offset-md-4">
    					<span class="input-group-text form-control" id="addon-wrapping">Nick antigo</span>
						</div>
						<input type="text" name="oldNick" id="inputNick" class="col-sm-2 form-control" placeholder="" aria-label="oldPassword" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap">
						<div class="input-group-prepend offset-md-4">
    					<span class="input-group-text form-control pular" id="addon-wrapping">Senha</span>
						</div>
						<input type="password" name="newPassword" id="inputPassword" class="col-sm-2 form-control pular" placeholder="" aria-label="newPassword" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap">
						<div class="input-group-prepend offset-md-4">
    					<span class="input-group-text form-control pular" id="addon-wrapping">Novo nick</span>
						</div>
						<input type="text" name="newNick" id="inputNick" class="col-sm-2 form-control pular" placeholder="" aria-label="newNick" aria-describedby="addon-wrapping">
					</div>
					<div class="input-group flex-nowrap">
						<div class="input-group-prepend offset-md-4">
    					<span class="input-group-text form-control pular" id="addon-wrapping">Confirma nick</span>
						</div>
						<input type="text" name="newNick" id="inputNick" class="col-sm-2 form-control pular" placeholder="" aria-label="newNick" aria-describedby="addon-wrapping">
					</div>
					<input type="submit" class="btn btn-success col-md-3 offset-md-4 d-block pular1" data-toggle="button" aria-pressed="false" autocomplete="off" value="Trocar senha">
		</div>
	</div>