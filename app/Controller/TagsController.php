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
			if ($this->request->is('post')) {//①タグの存在確認　	
				$sql = tagsテーブルからtag.idを検索するセレクト文。条件は、テーブルに既にあるnameとpostされてきたもののnameキーに入っている値が一致するもの。
				$hoge = queryメソッドで$sqlを使って検索、その際に$sqlで設定したプレースホルダーのことに注意する。
				
				if ($hogeが空だったら) {//②タグが登録されていなかった場合の処理
					ポストされてきたデータの中のTag.nameを連想配列の形になるようにしてtagsにsave
					$hogeと似た要領で、nameカラムを使って、新しく追加したデータのidを取得
	
				} else { //③タグが登録されていたら場合の処理
					$huga = [
						'post_id' => ['PostsTag']['post_id'],
						'tag_id' =>  ①で得たクエリメソッドからデータを弄ってtagのidを取得
					];
					//④saveする処理
					if(posts_tagsテーブルを検索。条件はこれから紐付けようとしているtag_idがすでに紐付いているかどうか) {
						setFlashで既にあります。
					} else {
						save($huga);
						現在のページにリダイレクト
					}
					

				}


			} else {//getなどでアクセスしてきたら、データがおかしかったら
				setFlashでfailed
				
			}

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


