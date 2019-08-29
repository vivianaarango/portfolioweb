<?php

use Phalcon\Mvc\Model;

class ProjectDetail extends Model
{
    /**
     * @var integer
     */
    public $id;

    /**
     * @var integer
     */
    public $id_project;

    /**
     * @var string
     */
    public $description;

    /**
     * @var string
     */
    public $text_slider;

    /**
     * @var string
     */
    public $rights;

    /**
     * @var integer
     */
    public $qualification;
    
}
