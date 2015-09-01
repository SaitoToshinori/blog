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


				//以下細かな流れ
				/*
				if (データがpostされてきたら) {
			

					if (自分のユーザーid(ログインユーザーのid)と記事のユーザーidの不一致) {
							favoriteテーブルにデータをsave
							setflashでseccess
							今いるページにリダイレクト
					} else {
							setflashでfailed
							今いるページにリダイレクト
					}
				}
				//以下のは大まかな方針
				自分のユーザーid(ログインユーザーのid)と記事のユーザーidの不一致の確認
				データがpost送信されてくるのでそれをfavoritesテーブルに格納(セーブ)
				成功->success,失敗->failed
				現在のページヘリダイレクト
				*/

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
		/*
		public function delete() {
			if(deleteするお気に入りのidをわたし削除) {
				タグのidを渡して削除。deleteメソッドを使うが関連するものが消えないように第二引数にはfalseを
				setflashで成功
				今のページヘリダイレクト
			} else {
				setflashで失敗
				今のページヘリダイレクト

			}
		*/

			//以下のはおおまかな方針
			/*削除するお気に入りのidが渡されて、それに対応するお気に入りがdeleteされる
			削除が成功したらsuccessとだしてリダイレクト
			失敗したらfailedとだしてリダイレクト
			*/
		//}
}