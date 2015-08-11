<h1>トップページ</h1>


<?php echo $this->Html->link('ログアウト', array('action'=>'logout')); ?> 

<ul>

<?php foreach ($posts as $post): ?>
<li>

<?php echo $this->Html->link($post['Post']['title'],'/posts/view/'.$post['Post']['id']); ?>

<?php echo $this->Html->link($post['User']['username'],'/users/mypage/'.$post['User']['id']); ?>

</li>
<?php endforeach; ?>



</ul>