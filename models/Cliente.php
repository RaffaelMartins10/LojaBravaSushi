<?php
class Cliente extends model {


    public function cadastrarcliente($name,$cpf,$telefone,$cep,$rua,$numero,$complemento,$bairro,$cidade,$estado,$tipo_venda) {
       	$sql = "INSERT INTO cliente (nome_cliente, telefone, cep, rua,numero,complemento, bairro, cidade, estado, tipo_venda) VALUES (:nome_cliente, :telefone, :cep, :rua,:numero,:complemento, :bairro, :cidade, :estado,1)";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":nome_cliente", $name);
		$sql->bindValue(":telefone", $telefone);
        $sql->bindValue(":cep", $cep);
        $sql->bindValue(":rua", $rua);
		$sql->bindValue(":numero", $numero);
        $sql->bindValue(":complemento", $complemento);
        $sql->bindValue(":bairro", $bairro);
		$sql->bindValue(":cidade", $cidade);
		$sql->bindValue(":estado", $estado);
		$sql->execute();
	}
  
    public function validate($id) {
		$uid = '';

		$sql = "SELECT * FROM venda ";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":id", $id);
		$sql->execute();

		if($sql->rowCount() > 0) {
			$sql = $sql->fetch();
			$uid = $sql['id'];
		}

		return $uid;
	}











}