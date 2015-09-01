<?php

class FavoritesController extends AppController { 

		public $helpers = array('Html', 'Form');

		public $uses = array('User', 'Post', 'Favorite');

		public function add() {
				if ($this->request->is('post')) {
					$this->Favorite->save($this->request->data);
					$this->Session->setFlash('Success!');
		            $this->redirect(array('controller'=>'posts', 'action' =>'view', $this->request->data['Favorite']['post_id']));

				} else {
					$this->Session->setFlash('failed!');
					$this->redirect(array('controller'=>'posts', 'action' =>'view', $this->request->data['Favorite']['post_id']));
					
				}


				

		}

		public function delete($id) {


				if ($this->request->is('get')) {
        			throw new MethodNotAllowedException();
    			}
   				if($this->Favorite->delete($id)) {
					$this->Session->setFlash('Success!');
		            $this->redirect('/users/');
				} else {
					$this->Session->setFlash('failed!');
		            $this->redirect('/users/');

				}

		}
		
}
