<h2><?php echo $keyword; ?> の検索結果</h2>


<ul>

<?php foreach ($search as $search): ?>
<li>

<?php echo $this->Html->link($search['Post']['title'],'/posts/view/'.$search['Post']['id']); ?>



</li>
<?php endforeach; ?>

</ul>

<!--
Xと検索をかけてfindした結果が表示される。
※Xがここでも変数として使えるようにcontrollerで受け渡しをする

Xという検索キーワードの
検索結果を変数としてcontrollerの方から受け取り
それをforeachで回す
それぞれは記事のタイトルだが表示されるようにする
タイトルをクリックすると記事の詳細ページへ飛ぶ
-->