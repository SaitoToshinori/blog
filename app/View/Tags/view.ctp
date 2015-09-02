<h2><?php echo h($tag['Tag']['name']); ?>が付いている記事</h2>


<ul>
<li>
<?php foreach ((array)$tag['Post'] as $post): ?>
<?php echo $this->Html->link($post['title'],'/posts/view/'.$post['id']); ?>



</li>
<?php endforeach; ?>
</ul>
