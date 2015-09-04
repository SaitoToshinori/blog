<?php


class Post extends AppModel {
    public $hasMany = ['Comment', 'Favorite'];
    //public $hasMany = "Favorite";
    
    public $validate = array(
        'title' => array(
            'rule' => 'notEmpty',
            'message' => '空じゃだめだし'
        ),
        'body' => array(
            'rule' => 'notEmpty'
        ),
        'image' => array(
            'rule' => array('url'),
            'message' => 'URLを入力してください'
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

