<?php
/*
方針
作成するアクション->add,deleteアクション
public add function () {
	自分のユーザーid(ログインユーザーのid)と記事のユーザーidの不一致を確かめてから
	データがpost送信されてくるのでそれをfavoritesテーブルに格納(セーブ)
	成功->success,失敗->failed
	現在のページヘリダイレクト


}
public delete function () {
	削除する記事のidが渡されて、それに対応する記事がdeleteされる
	削除が成功したらsuccessとだしてリダイレクト
	失敗したらfailedとだしてリダイレクト
}

*/

