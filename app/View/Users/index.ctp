<h2>記事一覧</h2>

<ul>
<?php echo "a"; ?>
<li id="post_<?php echo h($post['Post']['id']); ?>">

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


