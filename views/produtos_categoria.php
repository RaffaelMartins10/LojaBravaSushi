<div class="textProdutos">
	<ul>
		<?php foreach($viewData['categories'] as $cat): ?>
	    	<div>
	      		<a href="<?php echo BASE_URL.'categories/enter/'.$cat['id']; ?>"><?php echo $cat['name']; ?></a>
				
						</div>
					        	<?php
					        	if(count($cat['subs']) > 0) {
					        		$this->loadView('menu_subcategory', array(
					        			'subs' => $cat['subs'],
					        			'level' => 1
					        		));
					        	}
					        	?>
    	<?php endforeach; ?>
					        </ul>
					      
					    <?php if(isset($viewData['category_filter'])): ?>
						    <?php foreach($viewData['category_filter'] as $cf): ?>
						    <div><a href="<?php echo BASE_URL; ?>categories/enter/<?php echo $cf['id']; ?>"><?php echo $cf['name']; ?></a></div>
							<?php endforeach; ?>
						<?php endif; ?>
</ul>

<!--<form method="POST" class="addtocartform" action="<?php echo BASE_URL; ?>cart/add">
			<input type="hidden" name="id_product" value="<?php echo $product_info['id']; ?>" />
			<input type="hidden" name="qt_product" value="1" />
			<button data-action="decrease">-</button><input type="text" name="qt" value="1" class="addtocart_qt" disabled /><button data-action="increase">+</button>
			<input class="addtocart_submit" type="submit" value="<?php $this->lang->get('ADD_TO_CART'); ?>" />
		</form> -->
</div>
