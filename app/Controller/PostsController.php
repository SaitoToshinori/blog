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
        //var_dump($id['Post']['id']);//14
        /*
        $branch = array(
            'post_id' => $id['Post']['id'],
            'user_id' => $this->Auth->user('id')
            );
        $this->set('check', $branch);
        $search = $this->Favorite->find('count', $branch);
        */
/*	$creteria = [
        	'Favorite.post_id' => $this->request->params['id'],
     		'Favorite.user_id' => $this->Auth->user('id'),
	];
var_dump($creteria);
*/
	$result = $this->Favorite->find('first', [
		//'conditions' => $creteria
		'conditions' => [
        		'Favorite.post_id' => $this->request->params['id'],
     			'Favorite.user_id' => $this->Auth->user('id'),
		]
	]);
    var_dump($result);
    var_dump($this->Auth->user('id'));
    $this->set('check', $result);
//var_dump("aaaaaaaaa");
//var_dump($result);
        //var_dump($this->Post->read());
        //$this->set('posts', $this->Post->find('all'));
        // $this->set('post', $this->Post->find('all', array(
        //     'conditions' => array('Post.id' => $this->request->params['id']))));
        // var_dump($this->Post->find('all', array(
        //     'conditions' => array('Post.id' => $this->request->params['id']))));
        // /*var_dump($this->Post->find('all', array(
        // 'conditions' => array('Post.id' => $this->request->params['id']))));
        // exit;*/
    }
    

    /*
    public function view($id = null) {
        $this->Post->id = $id;
        $this->set('post', $this->Post->read());
        var_dump($this->Post->read());
        
    }
    */
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

}
