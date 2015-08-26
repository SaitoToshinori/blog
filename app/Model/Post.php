<?php



class Post extends AppModel {
    public $hasMany = "Comment";
    
    public $validate = array(
        'title' => array(
            'rule' => 'notEmpty',
            'message' => '空じゃだめだし'
        ),
        'body' => array(
            'rule' => 'notEmpty'
        )
    );

    public $name = 'Post';
    public $belongsTo = 'User';

    public $hasAndBelongsToMany = array(
        'Tag' =>
           array(
            'classname'                     => 'Tag',
            'joinTable'                     => 'posts_tags',
            'foreignKey'                    => 'post_id',
            'associationForeignKey'         => 'tag_id',//posts_tagsから変える(ドキュメントを参考に)
            'unique'                        => 'true',
            'conditions'                    => '',
            'fields'                        => '',
            'order'                         => '',
            'limit'                         => '',
            'offset'                        => '',
            'finderQuery'                   => '',
            'deleteQuery'                   => '',
            'insertQuery'                   => ''
        )


    );
}

