<?php
class cartaoController extends controller {

	private $user;

    public function __construct() {
        parent::__construct();
    }

    public function index() {
    	$store = new Store();
    	$users = new Users();
    	$cart = new Cart();
		$purchases = new Purchases();
		$venda = new Venda();
		

        $dados = $store->getTemplateData();
       
        if(!empty($_POST['telefone'])) {

	    	$nome = addslashes($_POST['name']);
	        $cpf = addslashes($_POST['cpf']);
	        $telefone = addslashes($_POST['telefone']);
	        $cep = addslashes($_POST['cep']);
	        $rua = addslashes($_POST['rua']);
	        $numero = addslashes($_POST['numero']);
	        $complemento = addslashes($_POST['complemento']);
	        // $bairro = addslashes($_POST['bairro']);
	        $cidade = addslashes($_POST['cidade']);
			$estado = addslashes($_POST['estado']);
			$horapedido = addslashes($_POST['hora_pedido']);
		

	          	$list = $cart->getList();
	        	$frete = 0;
				$total = 0;

				$uid = $users->createUser($nome,$cpf,$telefone,$cep,$rua,$numero,$complemento,$horapedido,$cidade,$estado);
				
				$list = $cart->getList();
				$total = 0;
		
				foreach($list as $item) {
					$total += (floatval($item['price']) * intval($item['qt']));
				}
		
				if(!empty($_SESSION['shipping'])) {
					$shipping = $_SESSION['shipping'];
		
					if(isset($shipping['price'])) {
						$frete = floatval(str_replace(',', '.', $shipping['price']));
					} else {
						$frete = 0;
					}
		
					$total += $frete;
				}
		
				$id_purchase = $purchases->createPurchase($uid, $total, 'Cartão');

				if ($id_purchase == true){
					unset($_SESSION['cart']);
					$this->loadTemplate('paypal_obrigado', $dados);
				}
		
		
				foreach($list as $item) {
					$venda->addItem($id_purchase, $item['id'], $item['qt'], $item['price']);
				}        

	        }
        
        $this->loadTemplate('cart_cartao', $dados);
	}
}