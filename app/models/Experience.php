<?php

use Phalcon\Mvc\Model;

class Experience extends Model
{
    /**
     * @var integer
     */
    public $id_experience;

    /**
     * @var integer
     */
    public $type;//1+estudio 2=experiencia laboral

    /**
     * @var string
     */
    public $title;

    /**
     * @var string
     */
    public $place;

    /**
     * @var string
     */
    public $color;

    /**
     * @var string
     */
    public $time;
    
}
