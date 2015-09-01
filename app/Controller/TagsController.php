<?php

class TagsController extends AppController {
		public $helpers = array('Html', 'Form');

		public $uses = array('PostsTag', 'Post', 'Tag');



		public function index() {
			$this->set('tags', $this->Tag->find('all'));
    	}
    
	    public function view($id = null) {
	    	$this->Tag->id = $this->request->params['id'];
        	$this->set('tag', $this->Tag->read());
        }
	   
	    public function add() {
			if ($this->request->is('post')) {
					$sql = "SELECT Tag.id, Tag.name FROM tags AS Tag WHERE Tag.name = ?";
					$rows = $this->Tag->query($sql, array(Hash::get($this->request->data, 'Tag.name')));
					if (empty($rows)) {
						$row = $this->Tag->save($this->request->data['Tag']);
						$tagId = $row['Tag']['id'];					
					} else { 
						$tagId = $rows[0]['Tag']['id'];					
					}
					$PostTag = [
						'post_id' => $this->request->data['PostsTag']['post_id'],
						'tag_id' => $tagId
					];
					$check = $this->PostsTag->find('count',[
						'conditions' => $PostTag
						]);
				if (empty($check)) {
					$this->PostsTag->save($PostTag);
					$this->Session->setFlash('Success!');
					$this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));	
					} else {
					$this->Session->setFlash('failed!');
	                $this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));	
				}
            }
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


