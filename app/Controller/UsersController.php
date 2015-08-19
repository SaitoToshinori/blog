<?php

class UsersController extends AppController {

    public $helpers = array('Html', 'Form');

    public $uses = array('User', 'Post');

    public function beforeFilter() {
        parent::beforeFilter();
        // ユーザー自身による登録とログアウトを許可する
        $this->Auth->allow('add', 'logout');

        
    }

    public function index() {
       /* $this->User->recursive = 0;
        $this->set('users', $this->paginate());*/
        $this->set('posts', $this->Post->find('all'));
        //$this->set('posts', $this->Post->findAllByuser_id($this->Auth->user('id')));
        $this->set('title_for_layout', '記事一覧');
        $this->set('users', $this->User->find('all'));
        
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

            if ($this->User->save($this->request->data)) {
                        $data = array(
                          'email' => $this->request->data['User']['email'],
                          'password' => $this->request->data['User']['password']
                        );
                if ($this->Auth->login($data)) {
                    $this->Session->setFlash(__('The user has been saved'));
                    $this->redirect(array('action' => 'mypage'));
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
            if ($this->Auth->login()) 
        //正しい値が帰ってきている
            {

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
//$this->log("mypage start", 'debug');
     //   $this->set('posts', $this->Post->find('all'));
//$this->log($this->Post->find('all'), 'debug');
        //debug($limited);//値入っていました。
//$this->log($limited['User'], 'debug');
        $this->set('user_posts', $this->Post->findAllByUserId($this->request->params['id']));
//$this->log($this->Post->findAllByuser_id($posts['User']['id']), 'debug');
        //$this->set('posts', $this->Post->findAllByuser_id($this->Auth->user('id')));
    }
        
    


}
