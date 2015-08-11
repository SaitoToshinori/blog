<h2>ユーザー一覧</h2>
<?php echo $this->Html->link('ログアウト', array('action'=>'logout')); ?> 
<ul>


<?php foreach ($users as $user) : ?>


<li>


<?php echo $this->Html->link($user['User']['username'],'/users/mypage/'.$user['User']['id']);


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


