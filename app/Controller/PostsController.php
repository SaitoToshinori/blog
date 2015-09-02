<?php

class PostsController extends AppController {
    public $helpers = array('Html', 'Form');
    

    public $uses = array('User', 'Post', 'Tag', 'PostsTag', 'Comment', 'Favorite');




    public function index() {
        $this->set('posts', $this->Post->find('all'));
        $this->set('title_for_layout', '記事一覧');
    }
    
    public function view($id = null) {
        $this->Post->id = $this->request->params['id'];
        $this->set('post', $this->Post->read());

        $id = $this->Post->read();
	    $result = $this->Favorite->find('first', [
    		'conditions' => [
            		'Favorite.post_id' => $this->request->params['id'],
         			'Favorite.user_id' => $this->Auth->user('id'),
    		]
    	    ]);
        $this->set('check', $result);
    }

    public function add() {
        
        
        if ($this->request->is('post')) {
            $this->request->data['Post']['user_id'] = $this->Auth->user('id');
            
            if ($this->Post->save($this->request->data)) {
                
                $this->Session->setFlash('Success!');
                $this->redirect(array('action'=>'index'));
            } else {
                $this->Session->setFlash('failed!');
            }
        }
    }
    
    public function edit($id = null) {
        $this->Post->id = $id;
        if ($this->request->is('get')) {
            $this->request->data = $this->Post->read();
        } else {
            if ($this->Post->save($this->request->data)) {
                $this->Session->setFlash('success!');
                $this->redirect(array('action'=>'index'));
            } else {
                $this->Session->setFlash('failed!');
            }
        }
    }
    
    public function delete($id) {
        if ($this->request->is('get')) {
            throw new MethodNotAllowedException();
        }
        if ($this->request->is('ajax')) {
            if ($this->Post->delete($id)) {
                $this->autoRender = false;
                $this->autoLayout = false;
                $response = array('id' => $id);
                $this->header('Content-Type: application/json');
                echo json_encode($response);
                exit();
            }
        }
        $this->redirect(array('action'=>'index'));
    }
    
    public function search() {

        if($this->request->is('get')) {
            $title = $this->request->query('body');
            $strpos = strpos($title, " ");
            if(empty($title) or empty($strpos)) {
                $this->Session->setFlash('入力しなければ検索できません。');
                $this->redirect(array('action'=>'index'));
            }
            $result = $this->Post->find('all', array(
                'conditions' => array(
                    'Post.title LIKE' => '%'. $title. '%'
                    )
                ));
            if(!empty($result)) {
                $this->set('search', $result);
                $this->set('keyword', $title);
            } else {
                $this->Session->setFlash('記事がありませんでした。');
                $this->redirect(array('action'=>'index'));                
            }

        }
    }
    
}
