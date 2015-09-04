<h2>記事検索</h2>



<?php
echo $this->Form->create('Post', array('type' => 'get', 'action' => 'search'));
echo $this->Form->input('body', array('rows' =>1));
echo $this->Form->end('検索');?>

<!--
課題整理
Post一覧が出ているページ全てにページングをつける
ページングは、1ページに10Postを表示する
ページングには、全Post件数を表示する
pagenatorで以下のものを作る
前のページ、次のページに行くボタンを作る
総ポスト数が見れるようにする


<h2>記事一覧</h2>

<ul>
<?php //foreach ($posts as $post) : ?>
<li id="post_<?php //echo h($post['Post']['id']); ?>">
<?php
//echo $this->Html->link($post['Post']['title'],'/posts/view/'.$post['Post']['id']);
?> 
<?php// echo $this->Html->link($post['User']['username'],'/users/mypage/'.$post['User']['id']); ?>
<?php //echo $this->Html->link('編集', array('action'=>'edit', $post['Post']['id'])); ?> 
<?php //echo $this->Html->link('削除', '#', array('class'=>'delete', 'data-post-id'=>$post['Post']['id'])); ?>

</li>
<?php //endforeach; ?>
</ul>
-->
<?php
 echo $this->Paginator->counter(array('format' => '全%count%件' ));
?>


<table>
     
    <tr>
        
        <th>Title</th>
        <th>編集</th>
        <th>削除</th>
    </tr>

    <?php foreach ($Posts as $Post) :?>
    <tr>
        <td><?php echo $Post['Post']['title']; ?></td>
        <td><?php echo $this->Html->link('編集', array('action'=>'edit', $Post['Post']['id'])); ?> </td>
        <td><?php echo $this->Html->link('削除', '#', array('class'=>'delete', 'data-post-id'=>$Post['Post']['id'])); ?></td>       
    </tr>
    <?php endforeach; ?>
</table>

<?php
echo $this->Paginator->prev('< 前へ', array(), null, array('class' => 'prev disabled'));
echo $this->Paginator->numbers(array('separator' => ''));
echo $this->Paginator->next('次へ >', array(), null, array('class' => 'next disabled'));
?>

<h2>Add Post</h2>
<?php echo $this->Html->link('Add post', array('controller'=>'posts','action'=>'add'));
?>

<script>
$(function() {
    $('a.delete').click(function(e) {
        if (confirm('sure?')) {
            $.post('/blog/posts/delete/'+$(this).data('post-id'), {}, function(res) {
                $('#post_'+res.id).fadeOut();
            }, "json");
        }
        return false;
    });
});
</script>


