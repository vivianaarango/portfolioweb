<?php

class AdminController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Idea Design');
    }

    public function indexAction()
    {   
        $projects = Projects::find(array(
            "order" => "id_project ASC"
         ));

        $this->view->projects = $projects;
        $this->view->count_projects = count($projects);
    }


    public function viewAction()
    {   
  
    }

    public function editAction()
    {   
        if ($this->request->isPost()){
            
            $post = $this->request->getPost();
  
            if ( isset($post['id_project']) ) {
                $project = Projects::findFirst($post['id_project']);
                $this->view->project = $project;
            } else {
                $project = Projects::findFirst($post['id']);

                if (isset($project->id_project)){
                    $project->color = $post['color'];
                    $project->image = 'nada';
                    $project->text_alignment = $post['align'];
                    $project->text1 = $post['text1'];
                    $project->text2 = $post['text2'];
                    $project->text3 = isset($post['text3']) ? $post['text3'] : '';
                    $project->text4 = $post['text4'];

                    if ( $project->save() ){ 
                        $this->flash->success('Hemos actualizado los datos de tu proyecto !');
                    } else {
                        $this->flash->error('No hemos podido actualizar los datos');
                    }
                } 
                $this->response->redirect('admin');
            }

		} else {
			return $this->response->redirect('admin'); 
		}
  
    }

 

    public function newAction()
    {   
        if ($this->request->isPost()){

            $post = $this->request->getPost();

            $project = new Projects();
            $project->color = $post['color'];
            $project->text_alignment = $post['align'];
            $project->text1 = $post['text1'];
            $project->text2 = $post['text2'];
            $project->text3 = isset($post['text3']) ? $post['text3'] : '';
            $project->text4 = $post['text4'];

            if ($this->request->hasFiles() == true) {

                $folder = "proyectos/";

                $origen = $_FILES["image"]["tmp_name"];
                $destino = $folder.$_FILES['image']['name'];

                if (@move_uploaded_file($origen, $destino)) {
                    $this->flash->warning("siks.");
                }else{
                    $this->flash->warning("noks.");
                }

	        } else {
	            $this->flash->warning("No se pudo cargar la imagen.");
	        }

            $project->image = 'nada';

            if ( $project->save() ){ 
                $this->flash->success('Hemos creado el proyecto correctamente');
            } else {
                $this->flash->error('No hemos podido crear el proyecto');
            }

            $this->response->redirect('admin');
        } 
    }

    public function deleteAction()
    {   
        if ($this->request->isPost()){
            
            $post = $this->request->getPost();
            
            $project = Projects::findFirst($post['id_pjt']);
            
            if ( $project->delete()){ 
                $this->flash->success('Se ha eliminado el proyecto ');
            } else {
                $this->flash->error('No se ha podido eliminar el proyecto');
            }

            $this->response->redirect('admin');

		} else {
			return $this->response->redirect('admin'); 
		}
    }
}
