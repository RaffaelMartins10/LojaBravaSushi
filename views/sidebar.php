	<div class="filterarea">
		

		<form method="GET">		
			<div class="filterbox">
				<div class="filtercontent">
					<?php foreach($viewData['filters']['brands'] as $bitem): ?>
					<div class="filteritem">
						<input type="checkbox" <?php echo (isset($viewData['filters_selected']['brand']) && in_array($bitem['id'], $viewData['filters_selected']['brand']))?'checked="checked"':''; ?> name="filter[brand][]" value="<?php echo $bitem['id']; ?>" id="filter_brand<?php echo $bitem['id']; ?>" /> 
						<label for="filter_brand<?php echo $bitem['id']; ?>"><?php echo $bitem['name']; ?></label>
					</div>
					<?php endforeach; ?>
				</div>
			</div>
		 <!-- <div class="filterbox">
				<div class="filtertitle"><?php $this->lang->get('SALE'); ?></div>
				<div class="filtercontent">
					<div class="filteritem">
						<input type="checkbox" name="filter[sale]" <?php echo (isset($viewData['filters_selected']['sale']) && $viewData['filters_selected']['sale'] == '1')?'checked="checked"':''; ?> value="1" id="filter_sale" />
						<label for="filter_sale">Em promoção</label>
						<span style="float:right">(<?php echo $viewData['filters']['sale']; ?>)</span>
					</div>
				</div>
			</div>  -->
		</form>

	</div>

	
