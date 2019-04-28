<?php

class WebController extends ControllerBase
{
    public function initialize()
    {
        // $this->tag->setTitle('About us');
        // parent::initialize();
    }

    public function indexAction()
    {
        $projects = Projects::find(array(
            "order" => "id_project ASC"
         ));

        $this->view->projects = $projects;
        $this->view->count_projects = count($projects);
    }
}
