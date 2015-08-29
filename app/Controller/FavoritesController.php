<?php
/*
方針
作成するアクション->add,deleteアクション
public add function () {
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


}
public delete function () {
	id(deleteするお気に入りのidをわたし削除) {
		タグのidを渡して削除。deleteメソッドを使うが関連するものが消えないように第二引数にはfalseを
		setflashで成功
		今のページヘリダイレクト
	} else {
		setflashで失敗
		今のページヘリダイレクト

	}


	//以下のはおおまかな方針
	削除するお気に入りのidが渡されて、それに対応するお気に入りがdeleteされる
	削除が成功したらsuccessとだしてリダイレクト
	失敗したらfailedとだしてリダイレクト
}

*/

