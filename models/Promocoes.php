<?php
class Promocoes extends Model {

    public function getPromocao(){
        $array = array();

		$sql = "SELECT p.name as product_name, c.name as category_name
                FROM categories c 
        		INNER JOIN products p ON c.id = p.id_category 
				WHERE  c.NAME = 'Promozioni'" ;       
				$sql = $this->db->query($sql);

		if($sql->rowCount() > 0) {
			$array = $sql->fetchAll(\PDO::FETCH_ASSOC);
		}
		return $array;
    }
	

}
