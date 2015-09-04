<?php

class PostsController extends AppController {
    public $helpers = array('Html', 'Form');
    

    public $uses = array('Post', 'User', 'Tag', 'PostsTag', 'Comment', 'Favorite');




    public function index() {
        $this->set('posts', $this->Post->find('all'));
        $this->set('title_for_layout', '記事一覧');
        /*
        課題整理
        Post一覧が出ているページ全てにページングをつける
        ページングは、1ページに10Postを表示する
        ページングには、全Post件数を表示する
        大まかな方針
        1ページに付き10件だけ表示されるようにする
        記事の総件数を把握するために記事の全件数を把握する
        細かな方針
        ページネーションヘルパーを使い、記事全件取得をする
        その際に条件として1ページに付き10記事しか表示されないような条件を設定する
        2ページ目に行けるような仕組みを作る
        前のページに戻れるような仕組みを作る
        */
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
