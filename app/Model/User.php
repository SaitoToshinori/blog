<?php






App::uses('AppModel', 'Model');
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');


class User extends AppModel {
    public $validate = array(
        'username' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'A username is required'
            )
        ),
        'email' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'An email is required'
            )
        ),
        'password' => array(
            'required' => array(
                'rule' => array('notEmpty'),
                'message' => 'A password is required'
            )
        ),
        'birthday(ex:1999-02-12)' => array(
                'rule' => 'numeric',
                'required' => true,
                'allowEmpty' => false,
                'message' => 'A birthday is required'
            
            /*'rule2' => array(
                'rule' => array('date', 'ymd'),
                'message' => 'yy-mm-dd もしくは yyyy-mm-dd'
            )*/
        ),
        'role' => array(
            'valid' => array(
                'rule' => array('inList', array('admin', 'author')),
                'message' => 'Please enter a valid role',
                'allowEmpty' => false
            )
        ),//生年月日はymadを使うが、注意事項としてカラムをy,m,dごとに分けて保存できるかどうか(パラメーターの)
        'sex' => array(
            'valid' => array(
                'rule' => array('inList', array('female', 'male')),
                'message' => 'Please enter a valid role',
                'allowEmpty' => false
            )
        )
    );
    
	public function beforeSave($options = array()) {
	    if (isset($this->data[$this->alias]['password'])) {
	        $passwordHasher = new BlowfishPasswordHasher();
	        $this->data[$this->alias]['password'] = $passwordHasher->hash(
	            $this->data[$this->alias]['password']
	        );
	    }
	    return true;
	}

	public $name = 'User';
    //public $hasMany = "";
	public $hasMany = array('Post' =>
                            array('className' => 'Post',
                                  'conditions' => '',
                                  'order' => '',
                                  'foreignKey' => 'user_id',
                                  'dependent' => true,
                                  'exclusive' => false,
                                  'finderQuery' => ''
                            ),
                            'Favorite'
                  );


}

