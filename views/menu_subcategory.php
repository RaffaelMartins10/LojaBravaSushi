<?php foreach($subs as $sub): ?>

<div>
	<a href="<?php echo BASE_URL.'categories/enter/'.$sub['id']; ?>">
		<?php
		for($q=0;$q<$level;$q++) echo '-- ';
		echo $sub['name'];
		?>
	</a>
	</div>
<?php
if(count($sub['subs']) > 0) {
	$this->loadView('menu_subcategory', array(
		'subs' => $sub['subs'],
		'level' => $level + 1
	));
}
?>
<?php endforeach; ?>