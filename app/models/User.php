<?php

use Phalcon\Mvc\Model;

class User extends Model
{
    /**
     * @var integer
     */
    public $id_user;

    /**
     * @var string
     */
    public $email;

    /**
     * @var string
     */
    public $password;

    
}
