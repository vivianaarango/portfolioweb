<?php

class ExperienceController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Idea Design');
    }

    public function indexAction()
    {   
        $experience = Experience::find(array(
            "order" => "id_experience ASC"
        ));

        $this->view->experience = $experience;
        $this->view->count_experience = count($experience);
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
