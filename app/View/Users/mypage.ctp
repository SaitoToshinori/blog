<h1><?php echo $auth->user('username')?>のマイページ</h1>


<ul>

<?php foreach ($user_posts as $post): ?>
<li>

<?php echo $this->Html->link($post['Post']['title'],'/posts/view/'.$post['Post']['id']); ?>

<?php echo $this->Html->link($post['User']['username'],'/users/mypage/'.$post['User']['id']); ?>

</li>
<?php endforeach; ?>



</ul>