<?php

class IndexController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Welcome');
    }

    public function indexAction()
    {   
        return $this->response->redirect('web/index'); 
    }
}
