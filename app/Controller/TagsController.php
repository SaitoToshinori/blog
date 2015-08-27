<?php

class TagsController extends AppController {
		public $helpers = array('Html', 'Form');

		public $uses = array('PostsTag', 'Post', 'Tag');



		public function index() {
			$this->set('tags', $this->Tag->find('all'));
			
        
    	}
    
	    public function view($id = null) {
	    	//$this->set('tags',$this->Tag->find('all'));
	    	$this->set('tags', $this->Tag->find('all', array(
            'conditions' => array('Tag.id' => $this->request->params['id']))));
        }
	   
	    public function add() {
	    	/*if ($this->request->is('post')) {
	    		var_dump($this->request->data);
            if ($this->PostsTag->save($this->request->data)) {

                $this->Session->setFlash('Success!');
                $this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));
            } else {
                $this->Session->setFlash('failed!');
            }

        	}
        	*/
        	/* ここから確認
			$sql = tagsテーブルからポストされてきたtag.nameと一致するものがあるなら持ってくるというセレクト文
			$hoge = モデルのqueryメソッドで$sqlを引数にして、$sqlで設定していたプレースホルダーの処理を書いたものを変数に代入

			if($hogeの中身が空なら){
				//こちらには新規作成のフロー
				if(ビューのフォームからpost送信されてきたら) {
						tagsテーブルに送信されてきたデータの中でTag.nameのデータを連想配列でsave
						今新たに保存されたレコードのidを取得し$tagIdに代入
				}
			} else {
				$hogeでTag.idのデータがとれているので、それを連想配列の構造で$tagIdに代入
			}

			$huga = 連想配列の構造でpost_idに、ポストされてきたデータからposts/view/○の○の部分=idを代入
					tag_idにはtag_idに、$tagIdを代入

			posts_tagsテーブルに$hugaをsave


        	*/

            
            
            
        }
	    
	    
	    
	    public function edit($id = null) {
	    
	    }
	    
	    public function delete($id) {
			    if ($this->request->is('get')) {
		            throw new MethodNotAllowedException();
		        }
		        
		        if ($this->request->is('ajax')) {
		            if ($this->Tag->delete($id)) {
		                $this->autoRender = false;
		                $this->autoLayout = false;
		                $response = array('id' => $id);
		                $this->header('Content-Type: application/json');
		                echo json_encode($response);
		                exit();
		            }
		        }
		        $this->redirect(array('controller'=>'posts', 'action'=>'index'));
    	}
	    
}


