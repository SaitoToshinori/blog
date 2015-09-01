<?php

class Favorite extends AppModel {
		public $name = 'Favorite';
		public $belongsTo = [
			'Post' => [
			'className' => 'Post',
			'foreignKey' => 'post_id'
			],
			'User' => [
			'className' => 'User',
			'foreignKey' => 'user_id'
			]

		];


}