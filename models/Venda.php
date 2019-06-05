<?php
class Venda extends model {


    public function criarVenda($name,$cpf,$telefone,$cep,$rua,$numero,$complemento,$bairro,$cidade,$estado,$tipo_venda) {
       	$sql = "INSERT INTO venda (nome_cliente, telefone, cep, rua,numero,complemento, bairro, cidade, estado, tipo_venda) VALUES (:nome_cliente, :telefone, :cep, :rua,:numero,:complemento, :bairro, :cidade, :estado,1)";
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

	public function addItem($id, $id_product, $qt, $price) {

		$sql = "INSERT INTO purchases_products (id_purchase, id_product, quantity, product_price) VALUES (:id, :idp, :qt, :price)";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":id", $id);
		$sql->bindValue(":idp", $id_product);
		$sql->bindValue(":qt", $qt);
		$sql->bindValue(":price", $price);
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