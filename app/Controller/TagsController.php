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
	    	/*
	    	if ($this->request->is('post')) {
	    		var_dump($this->request->data);
	            if ($this->PostsTag->save($this->request->data)) {
	                $this->Session->setFlash('Success!');
	                $this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));
	            } else {
	                $this->Session->setFlash('failed!');
	                $this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));
	            }
        	}
        	*/
        	
			if ($this->request->is('post')) {//①タグの存在確認　	
				$sql = "SELECT Tag.id, Tag.name FROM tags AS Tag WHERE Tag.name = ?";
				$rows = $this->Tag->query($sql, array(Hash::get($this->request->data, 'Tag.name')));//配列にしたら解決
				if (empty($rows)) {
					//var_dump($this->request->data['Tag']);
					//exit;
					$row = $this->Tag->save($this->request->data['Tag']);
					//var_dump($row);
					$tagId = $row['Tag']['id'];
					//var_dump($huga);
					//exit;
					
				} else { //3タグが登録されていたらの場合
					//$huga = [
					//	'post_id' => ['PostsTag']['post_id'],
					//	'tag_id' =>  ①で得たクエリメソッドからデータを弄ってtagのidを取得
					//post_id = 4 で既に作られたタグを引っ張ってくる。そのため、まず、しっかりとれているか、$rowsを検証。望むものはkkkが入っている
					//結果はarray(1) { [0]=> array(1) { ["Tag"]=> array(2) { ["id"]=> string(2) "46" ["name"]=> string(3) "kkk" } } }
					//
					$tagId = $rows[0]['Tag']['id'];//成功。中身は数字
					//var_dump($tagId);
					//exit;
				}
				//var_dump($this->request->data);結果array(2) { ["Tag"]=> array(1) { ["name"]=> string(3) "kkk" } ["PostsTag"]=> array(1) { ["post_id"]=> string(1) "7" } }
				//exit;
				$PostTag = [
					'post_id' => $this->request->data['PostsTag']['post_id'],
					'tag_id' => $tagId
				];//OK
				
				//var_dump($PostTag);
				//exit;
				$check = $this->PostsTag->find('count',[
					'conditions' => $PostTag
					]);
				//すでに紐付いているものかどうかを確認、成功。紐付いていたらint(1)のように変えられる
				//var_dump($hoge);
				//exit;
				if (empty($check)) {//④saveする処理
					//if(posts_tagsテーブルを検索。条件はこれから紐付けようとしているtag_idがすでに紐付いているかどうかのempty) {
					//save
					$this->PostsTag->save($PostTag);
					//var_dump($this->PostsTag->validationErrors);
					//exit;
					$this->Session->setFlash('Success!');
					$this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));	
					} else {
					$this->Session->setFlash('failed!');
	                $this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));	
						
				}
				
				//	var_dump($rows);
				//	exit;
				//$this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));
			}
				//$sql = tagsテーブルからtag.idを検索するセレクト文。条件は、テーブルに既にあるnameとpostされてきたもののnameキーに入っている値が一致するもの。
				//$hoge = queryメソッドで$sqlを使って検索、その際に$sqlで設定したプレースホルダーのことに注意する。
				
				//if (empty($rows)) {//②タグが登録されていなかった場合の処理
					//ポストされてきたデータの中のTag.nameを連想配列の形になるようにしてtagsにsave
					//$hogeと似た要領で、nameカラムを使って、新しく追加したデータのidを取得
	/*
				} else { //③タグが登録されていたら場合の処理
					$huga = [
						'post_id' => ['PostsTag']['post_id'],
						'tag_id' =>  ①で得たクエリメソッドからデータを弄ってtagのidを取得
					];
					
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


