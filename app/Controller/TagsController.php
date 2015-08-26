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
	    	if ($this->request->is('post')) {
            if ($this->PostsTag->saveAll($this->request->data)) {

                $this->Session->setFlash('Success!');
                $this->redirect(array('controller'=>'posts','action'=>'view',$this->request->data['PostsTag']['post_id']));
            } else {
                $this->Session->setFlash('failed!');
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



