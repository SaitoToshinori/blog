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
            $result = $this->Post->find('all', array(
                'conditions' => array(
                    'Post.title LIKE' => '%'. $title. '%'//エスケープ処理でミス？%とか入れるまでは成功してた
                    )
                ));
                //var_dump($result);
                //exit;
                //正常な動作している
            //いかが正しい値が吐いいているのにすべて記事がない、となる
            if(!empty($result)/*条件分の中身もtrue*/) {
                $this->set('search', $result);
                $this->set('keyword', $title);
                //$this->redirect(array('action'=>'search'));
                //からじゃなかったら結果のページヘ遷移。
            } else {
                $this->Session->setFlash('記事がありませんでした。');
                $this->redirect(array('action'=>'index'));                
                //空だったら、元のページへリダイレクトして見つかりませんでした。
            }

        }
        /*
        もしgetでアクセスが来たら(検索ということもあり)
        検索キーワードをあいまい検索として、データを取得する。この時にLIKEを使ったり、%にエスケープ処理を施す
        上の結果を変数としてビューに渡す
        また、検索キーワードもビューに渡す*/
    }
    
}
