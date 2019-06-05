<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Braza Sushi Bar Itália</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/jquery-ui.min.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/jquery-ui.structure.min.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/jquery-ui.theme.min.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo BASE_URL; ?>assets/css/style.css" type="text/css" />    
		<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/jquery.min.js"></script>
	</head>
	<body>
		<nav>
    		<div class="container">
        		<input id="responsive-menu" type="checkbox">
						<label for="responsive-menu"><a href="<?php echo BASE_URL; ?>"><img width="150" src="<?php echo BASE_URL; ?>assets/images/Braza Verde.png" /></a> <span id="menu-icon"></span></label>
						<div class="col-sm-3">
						<a href="<?php echo BASE_URL; ?>cart">
							<div class="cartarea">
								<div class="carticon">
									<div class="cartqt"><?php echo $viewData['cart_qt']; ?></div>
								</div>
								<div class="carttotal">
									<?php $this->lang->get('Acquisto'); ?>:<br/>
									<span>€ <?php echo number_format($viewData['cart_subtotal'], 2, ',', '.'); ?></span>
								</div>
							</div>
						</a>
					</div>
					
					<div id="overlay"></div>
					<ul>
					<li><a href="<?php echo BASE_URL; ?>">Home</a></li>
					<li><a href="<?php echo BASE_URL.'produtos_categoria/'; ?>">Menu</a></li>
					<li><a href="<?php echo BASE_URL.'promocoes/'; ?>">Promozioni</a></li>
					<li><a href="<?php echo BASE_URL.'contato/'; ?>">Contatti</a></li>
					</ul>
			</div>
		</nav>	
	
		<header>
			

		</header>
		<section>
			<div class="container">
			
				<div class="row">
					 <?php if(isset($viewData['sidebar'])): ?>
				  		 <div class="col-sm-3">
				  		</div> 
				  		<div class="col-sm-9"><?php $this->loadViewInTemplate($viewName, $viewData); ?></div>
					<?php else: ?>
						<div class="col-sm-12"><?php $this->loadViewInTemplate($viewName, $viewData); ?></div>
					<?php endif; ?>
				</div>
	    	</div>
	    </section>
	  
			<footer>
				<div class="Footer">
							<a href="<?php echo BASE_URL; ?>"><img width="150" src="<?php echo BASE_URL; ?>assets/images/logo.png" /></a><br/>
								<strong>350/5421555</strong><br/><br/>
							    brazasushibar@hotmail.it<br/>
                                     Via Marinelli, 52<br/>
																		 Montesilvano - PE <br/>
																		 Lunedì chiuso<br/>
                                    Martedì a domenica <br/>
																	  	P.I 04437320403<br/>
                                    12.00 alle 14.30<br/>
                                    19.00 alle 23.00<br/><br/>
                              SEGUICI SUI NOSTRI SOCIAL<br/><br/>
						
						<a href="https://www.facebook.com/brazasushibar/"><img src="<?php echo BASE_URL; ?>assets/images/icones/facebook.png" /></a>
						<a href="https://www.instagram.com/brazasushibar"><img src="<?php echo BASE_URL; ?>assets/images/icones/instagram.png" /></a>
						<a href="https://api.whatsapp.com/send?phone=393505421555"><img src="<?php echo BASE_URL; ?>assets/images/icones/whatsapp.png" /></a>
							
				</div>
	    
	    	<div class="copyright">
	    		<div class="container">
	    			<div class="row">
						<!-- © 2018 College Sushi. Designed by The Web Factory. -->
						<div class="col-sm-6">© 2019<span> Braza Sushi Bar</span>-
						Tutti i diritti sono riservati - P.I 04437320403.</div>
					</div>
	    		</div>
	    	</div>
			</footer>
			

		<!-- <script type="text/javascript">
		var BASE_URL = '<?php echo BASE_URL; ?>';
		<?php if(isset($viewData['filters'])): ?>
		var maxslider = <?php echo $viewData['filters']['maxslider']; ?>;
		<?php endif; ?>
		</script> -->
		<script type="text/javascript">var BASE_URL='<?php echo BASE_URL; ?>';</script>
		<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/script.js"></script>
	</body>
</html>