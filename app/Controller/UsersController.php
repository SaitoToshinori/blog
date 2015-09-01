<?php

class UsersController extends AppController {

    public $helpers = array('Html', 'Form');

    public $uses = array('User', 'Post', 'Favorite');

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add', 'logout');

        
    }

    public function index() {
        $this->set('posts', $this->Post->find('all'));
        $this->set('title_for_layout', '記事一覧');
        $this->set('users', $this->User->find('all'));
        var_dump($this->Auth->user('id'));
    }

    public function view($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        $this->set('user', $this->User->read(null, $id));
        

    }

    public function add() {
        if ($this->request->is('post')) {
            $this->User->create();
            $user = $this->User->save($this->request->data);
            if ($user) {
                if ($this->Auth->login($user['User']))//ここに引数を入れないと、なんにも返ってこない模様                     
                {
                    $this->Session->setFlash(__('The user has been saved'));
                    $this->redirect(['controller'=>'users','action'=>'index']);
                }
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
            }
        }
    
    }

    public function edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('The user has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
            unset($this->request->data['User']['password']);
        }
    }

    public function delete($id = null) {
        $this->request->onlyAllow('post');

        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid user'));
        }
        if ($this->User->delete()) {
            $this->Session->setFlash(__('User deleted'));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('User was not deleted'));
        $this->redirect(array('action' => 'index'));
    }
    

    public function login() {
        
        if ($this->request->is('post')){
            if ($this->Auth->login()) {
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('Invalid username or password, try again'));
            }
        }
        
    }

    public function logout() {
        $this->redirect($this->Auth->logout());
    }

    
    public function mypage() {
        $this->set('user_posts', $this->Post->findAllByUserId($this->request->params['id']));
        $this->set('favorites', $this->Favorite->find('all', array(
            'fields'     => array('Post.id', 'Post.title', 'Favorite.id'),
            'conditions' => array(
            'Favorite.user_id' => $this->request->params['id']
            )
            )));
    }
        
    


}
