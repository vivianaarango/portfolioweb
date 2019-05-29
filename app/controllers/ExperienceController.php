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
        if ($this->request->isPost()) {
            $post = $this->request->getPost();
  
            if ( isset($post['id_experience']) ) {
                $experience = Experience::findFirst($post['id_experience']);
                $this->view->experience = $experience;
            } else {
                $experience = Experience::findFirst($post['id']);

                if (isset($experience->id_experience)){

                    $experience->type = $post['experience'];
                    $experience->color = $post['color'];
                    $experience->title = $post['title'];
                    $experience->place = $post['place'];
                    $experience->time = $post['date'];

                    if ($experience->save()){
                        $this->response->redirect('admin');
                    }
                } 
            }
        }
    }

 
    /*
    * Crear experiencia o estudio
    */
    public function newAction()
    {   
        if ($this->request->isPost()){

            $post = $this->request->getPost();

            $experience = new Experience();
            $experience->type = $post['experience'];
            $experience->color = $post['color'];
            $experience->title = $post['title'];
            $experience->place = $post['place'];
            $experience->time = $post['date'];

            if ( $experience->save() ){ 
                //$this->flash->success('Se ha creado exitosamente');
            } else {
                $this->flash->error('No se ha podido crear el registro');
            }

            $this->response->redirect('experience');
        
        } 
    }

    /*
    * Eliminar experiencia o estudio 
    */
    public function deleteAction()
    {   
        if ($this->request->isPost()){
            
            $post = $this->request->getPost();
            
            $experience = Experience::findFirst($post['id_experience']);
            
            if ( $experience->delete()){ 
                //$this->flash->success('Se ha eliminado correctamente');
            } else {
                $this->flash->error('No se ha podido eliminar');
            }

            $this->response->redirect('experience');

		} else {
			return $this->response->redirect('experience'); 
		}
    }
}
