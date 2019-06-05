<?php
class Users extends model {

	public function emailExists($name) {

		$sql = "SELECT * FROM users WHERE name = :nome";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":nome", $name);
		$sql->execute();

		if($sql->rowCount() > 0) {
			return true;
		} else {
			return false;
		}

	}

	public function validate($name, $telefone) {
		$uid = '';

		$sql = "SELECT * FROM users WHERE name = :nome AND telefone = :telefone";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":nome", $name);
		$sql->bindValue(":telefone", $telefone);
		$sql->execute();

		if($sql->rowCount() > 0) {
			$sql = $sql->fetch();
			$uid = $sql['id'];
		}

		return $uid;
	}


	public function createUser($nome, $telefone,$cpf,$cep,$rua,$numero,$complemento,$horapedido,$cidade,$estado) {

		$sql = "INSERT INTO users (name, telefone,cpf,cep, rua,numero,complemento, horapedido, cidade, estado) VALUES
		 (:name, :telefone, :cpf, :cep, :rua,:numero,:complemento, :horapedido, :cidade, :estado)";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":name", $nome);
		$sql->bindValue(":cpf", $cpf);
	 	$sql->bindValue(":telefone", $telefone);
	 	$sql->bindValue(":cep", $cep);
	 	$sql->bindValue(":rua", $rua);
	 	$sql->bindValue(":numero", $numero);
        $sql->bindValue(":complemento", $complemento);
        $sql->bindValue(":horapedido", $horapedido);
	 	$sql->bindValue(":cidade", $cidade);
	 	$sql->bindValue(":estado", $estado);
	
		$sql->execute();

		return $this->db->lastInsertId();

	}
}