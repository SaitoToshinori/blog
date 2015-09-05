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
        'birthday' => array(
            'birthdayRule-1' => array(
                    'rule' => 'numeric',
                    'message' => '半角数字のみ入力可能です。'
            ),
            'birthdayRule-2' => array(
                    'rule' => 'notEmpty',
                    'required' => true,
                    'message' => '入力必須です。'
            )
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

