<?php

class TopsController extends AppController {
	public $helpers = array('Html', 'Form');

    public $uses = array('User', 'Post');

    public function index() {
    	$this->set('posts', $this->Post->find('all'));
       
    }
}