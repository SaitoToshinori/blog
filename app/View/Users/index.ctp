<h2>記事一覧</h2>
<?php echo $this->Html->link('ログアウト', array('action'=>'logout')); ?> 
<ul>

<?php foreach ($posts as $post) : ?>


<li>
<?php echo $this->Html->link($post['Post']['title'],'/posts/view/'.$post['Post']['id']);
?>

<?php echo $this->Html->link($post['User']['username'],'/users/mypage/'.$post['User']['id']);
?>

</li>
<?php endforeach; ?>







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


