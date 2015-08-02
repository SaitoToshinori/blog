
<h1><?php echo $theuser; ?>のマイページ</h1>
<?php echo $this->Html->link('ログアウト', array('action'=>'logout')); ?> 
<ul>
<?php foreach ($users as $user) : ?>
<li>
<?php
echo h($user['User']['username']);
?>

</li>
<?php endforeach; ?>
</ul>

