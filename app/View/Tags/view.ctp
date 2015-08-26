<h1>タグ</h1>

<ul>
<?php var_dump($tags); ?>
<?php foreach ($tags as $tag): ?>
<li>


<?php echo $this->Html->link($tag['Post'][0]['title'],'/posts/view/'.$tag['Post'][0]['id']); ?>


</li>
<?php var_dump($tag); ?>
<?php endforeach; ?>



</ul>