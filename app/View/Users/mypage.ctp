<h1>マイページ</h1>


<ul>

<?php foreach ($user_posts as $post): ?>
<li>

<?php echo $this->Html->link($post['Post']['title'],'/posts/view/'.$post['Post']['id']); ?>

<?php echo $this->Html->link($post['User']['username'],'/users/mypage/'.$post['User']['id']); ?>

</li>
<?php endforeach; ?>



</ul>
<!--
お気に入り記事一覧という感じで記事のタイトルとそのとなりに削除のリンクを張っておく
記事のタイトルをクリックすると該当記事の詳細ページに行く
-->