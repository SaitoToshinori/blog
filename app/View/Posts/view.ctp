<h2><?php echo h($post['Post']['title']); ?></h2>

<p><?php echo h($post['Post']['body']); ?></p>
<?php if(!empty($check) or $post['User']['id'] == $auth->user('id')) {
		echo '既にお気に入りしているか,お気に入りできません！';
} else {
		echo $this->Form->create('Favorite', array('action'=>'add'));
		echo $this->Form->input('Favorite.post_id',array('type'=>'hidden','value'=>$post['Post']['id']));
		echo $this->Form->input('Favorite.user_id', array('type'=>'hidden', 'value'=>$auth->user('id')));
		echo $this->Form->end('お気に入り');
}


?>
<h2>Comments</h2>
<ul>
<?php foreach ((array)$post['Comment'] as $comment): ?>

<li id="comment_<?php echo h($comment['id']); ?>">
<?php echo $comment['body'] ?> by <?php echo h($comment['commenter']); ?> 
<?php
    echo $this->Html->link('削除', '#', array('class'=>'delete', 'data-comment-id'=>$comment['id']));
?>
</li>
<?php endforeach; ?>
</ul>

<h2>Tags</h2>
<ul>
<?php foreach ((array)$post['Tag'] as $tag): ?>

<li id="tag_<?php echo h($tag['id']); ?>">
<?php echo $this->Html->link(h($tag['name']),'/tags/view/'.$tag['id']) ?>

<?php
    echo $this->Html->link('削除', '#', array('class'=>'delete', 'data-tag-id'=>$tag['id']));
?>

</li>
<?php endforeach; ?>
</ul>

<h2>Add Comment</h2>

<?php
echo $this->Form->create('Comment', array('action'=>'add'));
echo $this->Form->input('commenter');
echo $this->Form->input('body', array('rows'=>3));
echo $this->Form->input('Comment.post_id', array('type'=>'hidden', 'value'=>$this->request->params['id']));
echo $this->Form->end('post comment');
?>

<h2>Add Tag</h2>
<?php
echo $this->Form->create('Tag', array('action'=>'add'));
echo $this->Form->input('name');
echo $this->Form->input('PostsTag.post_id', array('type'=>'hidden', 'value'=>$post['Post']['id']));
echo $this->Form->end('post tag');
?>

<script>
$(function() {
    $('a.delete').click(function(e) {
        if (confirm('sure?')) {
            $.post('/blog/comments/delete/'+$(this).data('comment-id'), {}, function(res) {
                $('#comment_'+res.id).fadeOut();
            }, "json");
        }
        return false;
    });
});
</script>

<script>
$(function() {
    $('a.delete').click(function(e) {
        if (confirm('sure?')) {
            $.post('/blog/tags/delete/'+$(this).data('tag-id'), {}, function(res) {
                $('#tag_'+res.id).fadeOut();
            }, "json");
        }
        return false;
    });
});
</script>