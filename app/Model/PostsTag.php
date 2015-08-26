<?php
 
class PostsTag extends AppModel {
    public $name = 'PostsTag';
 
    public $belongsTo = array(
        'Post' => array(
            'className' => 'Post',
            'foreignKey' => 'post_id',
        ),
        'Tag' => array(
            'className' => 'Tag',
            'foreignKey' => 'tag_id',
        ),
    );

    public $validate = array(
        'post_id' => array(
            'rule' => array('limitDuplicates', 5),
            'message' => '利用回数の制限を超えました。'
        )
    );

    public function limitDuplicates($check, $limit) {
        // $check には array('post_id' => '入力値') が入る
        // $limit には 5 が入っている
        $existingPromoCount = $this->find('count', array(
            'conditions' => $check,
            'recursive' => -1
        ));
        return $existingPromoCount < $limit;
    }
}
    