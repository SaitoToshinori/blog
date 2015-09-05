<h1>マイページ</h1>


<ul>

<?php foreach ($user_posts as $post): ?>
<li>

<?php echo $this->Html->link($post['Post']['title'],'/posts/view/'.$post['Post']['id']); ?>

<?php echo $this->Html->link($post['User']['username'],'/users/mypage/'.$post['User']['id']); ?>

</li>
<?php endforeach; ?>

</ul>

<h2>気に入り一覧</h2>

<ul>

<?php foreach ($favorites as $post): ?>
<?php var_dump($post); ?>



<li>
<?php echo $this->Html->link($post['Post']['title'],'/posts/view/'.$post['Post']['id']);?>
<?php echo $this->Form->postLink('削除', array('controller' => 'favorites', 'action' => 'delete', $post['Favorite']['id'])); ?>


</li>
<?php endforeach; ?>

</ul>

<h2>占い結果</h2>

<ul>

<?php foreach ($divination as $result): ?>
<?php $detail = $result['details'] ; ?>




<li>
<?php  echo $detail['type'] ;?>
</li>
<li>
<?php  echo $detail['typen'];?>
</li>
<?php  echo $detail['attribute']["@"];?>
<li>
<?php  echo $detail['starn'];?>
</li>
<li>
<?php  echo $detail['un'];?>
</li>
<li>
<?php  echo $detail['en'];?>
</li>

<?php endforeach; ?>

</ul>
<!--
連想配列として占いの結果が現れるので、それを例によってforeachで回して結果を見れるようにする。
-->