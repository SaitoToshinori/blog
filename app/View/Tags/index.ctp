<h2>タグ一覧</h2>

<ul>
<?php foreach ($tags as $tag) : ?>
<li>
<?php echo $this->Html->link($tag['Tag']['name'],'/tags/view/'.$tag['Tag']['id']); ?> 


</li>
<?php endforeach; ?>
</ul>