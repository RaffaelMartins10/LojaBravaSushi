<?php
class contatoController extends controller {

	private $user;

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $store = new Store();
        $products = new Products();
        $categories = new Categories();
        $f = new Filters();

        $dados = $store->getTemplateData();
        
        $this->loadTemplate('contato', $dados);
     
    }

}