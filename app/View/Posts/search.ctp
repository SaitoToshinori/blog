<h2><?php echo $keyword; ?> の検索結果</h2>


<ul>

<?php foreach ($search as $search): ?>
<li>

<?php echo $this->Html->link($search['Post']['title'],'/posts/view/'.$search['Post']['id']); ?>



</li>
<?php endforeach; ?>

</ul>