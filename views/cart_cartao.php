<h1>Pagamento con Carte</h1>

<h3 align="center">Informazioni Personali</h3>

<form method="POST" align="center" id="teste" action="" name="teste" >
	<strong>Nome:</strong><br/>
	<input type="text" name="name" value="" /><br/><br/>

	<strong>CPF:</strong><br/>
	<input type="text" name="cpf" value="" /><br/><br/>

	<strong>Telefono:</strong><br/>
	<input type="text" name="telefone" value="" /><br/><br/>

	<h3>Informazioni Sull'indirizzo</h3>

	<strong>Codice Postale:</strong><br/>
	<input type="text" name="cep" value="" /><br/><br/>

	<strong>Strada:</strong><br/>
	<input type="text" name="rua" value="" /><br/><br/>

	<strong>Número:</strong><br/>
	<input type="text" name="numero" value="" /><br/><br/>

	<strong>Complemento:</strong><br/>
	<input type="text" name="complemento" value=""/><br/><br/>

	
	<?php $horaformat = date('H:i', strtotime('+105minutes'))?>
	<strong>Orario Di consegna:</strong><br/>
	<!-- <input type="time" id="time" name="bairro" value="" /><br/><br/> -->
	<input type="time" name="hora_pedido" value="<?php echo $horaformat;?>" /><br/><br/>

	<strong>Città:</strong><br/>
	<input type="text" name="cidade" value="" /><br/><br/>

	<strong>Stato:</strong><br/>
	<input type="text" name="estado" value="" /><br/><br/>

	<input type="submit" id="btnEfetuarCompra" value="Per Finire Acquisto" class="button efetuarCompra">
	
</form>