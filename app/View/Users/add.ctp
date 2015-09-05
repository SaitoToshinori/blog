<div class="user form">
<?php echo $this->Form->create('User'); ?>
    <fieldset>
        <legend><?php echo __('Add User'); ?></legend>
        <?php echo $this->Form->input('username');
        echo $this->Form->input('email');
        echo $this->Form->input('password');
        echo $this->Form->input('birthday', array(
            'label' => 'birthday(ex:19990212)',
            'dateFormat' => 'YMD'
            ));
        /*echo $this->Form->input('birthday', array(
            'label' => 'Month'
            ));
        echo $this->Form->input('birthday', array(
            'label' => 'Day'
            ));*/
        echo $this->Form->input('sex', array(
            'options' => array('female' => 'Female', 'male' => 'Male')
        ));
        echo $this->Form->input('role', array(
            'options' => array('admin' => 'Admin', 'author' => 'Author')
        ));

    ?>
    </fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>