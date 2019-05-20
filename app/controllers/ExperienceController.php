<?php

class ExperienceController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Idea Design');
    }

    public function indexAction()
    {   
        /* $projects = Projects::find(array(
            "order" => "id_project ASC"
         ));

        $this->view->projects = $projects;
        $this->view->count_projects = count($projects); */
    }


    public function viewAction()
    {   
  
    }

    /*
    Editar experiencia o estudio
    */
    public function editAction()
    {   
        if ($this->request->isPost()){
            
        }
  
    }

 
    /*
    * Crear experiencia o estudio
    */
    public function newAction()
    {   
        if ($this->request->isPost()){

        
        } 
    }

    /*
    * Eliminar experiencia o estudio 
    */
    public function deleteAction()
    {   
        if ($this->request->isPost()){
            

		} else {

		}
    }
}
