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


    /*
    Editar proyecto
    */
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
                    $project->text_alignment = $post['align'];
                    $project->text1 = $post['text1'];
                    $project->text2 = $post['text2'];
                    $project->text3 = isset($post['text3']) ? $post['text3'] : '';
                    $project->text4 = $post['text4'];

                    if ( (!empty($_FILES["image"])) && ($_FILES['image']['error'] == 0) ) {
                        //$filename = $post['text1'];
                        $filename = $_FILES['image']['name'];
                        $ext = substr($filename, strrpos($filename, '.') + 1);
                        $file_parts = pathinfo($_FILES["image"]["name"]);
                        $ext = $file_parts['extension'];
        
                        if ( ( $ext=="png" || $ext=="jpg" || $ext=="jpeg") && $_FILES["image"]["size"] < 10000000 ) {
        
                            $newname = __DIR__ . '/../../public/images/proyectos/'.$filename;
                            $bd_image = '../images/proyectos/'.$filename;
                   
                            if (!file_exists($newname)) {
                        
                                if ( (move_uploaded_file($_FILES['image']['tmp_name'], $newname)) ) {
                                    $project->image = $bd_image;
                                    if ( $project->save() ){ 
                                        //$this->flash->success('Hemos creado el proyecto correctamente');
                                    } else {
                                        $this->flash->error('No se han actualizado los datos');
                                    }
                                } else {
                                    $this->flash->error("Error al guardar la imagen.");
                                }
                            } else {
                                $this->flash->error("Error: Archivo ".$_FILES["image"]["name"]." ya existe");
                            }
                        } else {
                            $this->flash->error("Error: Solo se pueden cargar imagenes .jpg con un tamaño por debajo de 350Kb");
                        }
                    } else {
                        if ( $project->save() ){ 
                            $this->flash->success('Hemos actualizado los datos de tu proyecto !');
                        } else {
                            $this->flash->error('No hemos podido actualizar los datos');
                        }
                    }
                } 

                $this->response->redirect('admin');
            }

		} else {
			return $this->response->redirect('admin'); 
		}
  
    }

 
    /*
    * Crear nuevo proyecto 
    */
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


            if ( (!empty($_FILES["image"])) && ($_FILES['image']['error'] == 0) ) {
    
                //$filename = $post['text1'];
                $filename = $_FILES['image']['name'];
                $ext = substr($filename, strrpos($filename, '.') + 1);
                $file_parts = pathinfo($_FILES["image"]["name"]);
                $ext = $file_parts['extension'];

                if ( ( $ext=="png" || $ext=="jpg" || $ext=="jpeg") && $_FILES["image"]["size"] < 10000000 ) {

                    $newname = __DIR__ . '/../../public/images/proyectos/'.$filename;
                    $bd_image = '../images/proyectos/'.$filename;

                    if (!file_exists($newname)) {
                
                        if ( (move_uploaded_file($_FILES['image']['tmp_name'], $newname)) ) {

                            $project->image = $bd_image;
                            
                            if ( $project->save() ){ 
                                //$this->flash->success('Hemos creado el proyecto correctamente');
                            } else {
                                $this->flash->error('No se ha podido crear el proyecto');
                            }
                        } else {
                            $this->flash->error("Error al guardar la imagen.");
                        }
                    } else {
                        $this->flash->error("Error: Archivo ".$_FILES["image"]["name"]." ya existe");
                    }
                } else {
                    $this->flash->error("Error: Solo se pueden cargar imagenes .jpg con un tamaño por debajo de 350Kb");
                }
            } else {
                $this->flash->error("Error: No se selecciono un archivo");
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
                //$this->flash->success('Se ha eliminado el proyecto ');
            } else {
                $this->flash->error('No se ha podido eliminar el proyecto');
            }

            $this->response->redirect('admin');

		} else {
			return $this->response->redirect('admin'); 
		}
    }

    public function detailAction()
    {   
        if ($this->request->isPost()){

            $post = $this->request->getPost();
            if ( isset($post['id_project']) ) {
                $project = Projects::findFirst($post['id_project']);
                
                if ( isset($project->id_project) ){
                    $this->view->project = $project;

                    if (  isset($post['qualification']) ) {

                        $project_detail = new ProjectDetail();
                        $project_detail->id_projet = $post['id_project'];
                        $project_detail->description = $post['description'];
                        $project_detail->text_slider = $post['slider_text'];
                        $project_detail->color = $post['color'];
                        $project_detail->rights = isset($post['rights']) ? $post['rights'] : '';
                        $project_detail->qualification = $post['qualification'];
                     
                        if ( $project_detail->save() ) {

                            if ( (!empty($_FILES["image"])) && ($_FILES['image']['error'] == 0) ) {
                                //$filename = $post['text1'];
                    
                                $filename = $_FILES['image']['name'];
                                $ext = substr($filename, strrpos($filename, '.') + 1);
                                $file_parts = pathinfo($_FILES["image"]["name"]);
                                $ext = $file_parts['extension'];
                
                                if ( ( $ext=="png" || $ext=="jpg" || $ext=="jpeg") && $_FILES["image"]["size"] < 10000000 ) {
                                    
                                    $newname = __DIR__ . '/../../public/images/proyectos/'.$filename;
                                    $bd_image = '../images/proyectos/'.$filename;
                                   
                                    if (!file_exists($newname)) {
                                
                                        if ( (move_uploaded_file($_FILES['image']['tmp_name'], $newname)) ) {
                                        
                                            $image = new SliderImage();
                                            $image->id_project = $project_detail->id;
                                            $image->img = $bd_image;


                                            if ( $image->save() ){ 
                                                //$this->flash->success('Hemos creado el proyecto correctamente');
                                            } else {
                                                $this->flash->error("Error al guardar la imagen.");
                                            }
                                        } else {
                                            $this->flash->error("Error al guardar la imagen.");
                                        }
                                    } else {
                                        $this->flash->error("Error: Archivo ".$_FILES["image"]["name"]." ya existe");
                                    }
                                } else {
                                    $this->flash->error("Error: Solo se pueden cargar imagenes .jpg con un tamaño por debajo de 350Kb");
                                }
                            }

                            $this->response->redirect('admin');
                        } else {
                            $this->flash->error("Error al guardar el detalle del proyecto.");
                            $this->response->redirect('admin');
                        }
                    }

                } else {
                    return $this->response->redirect('admin'); 
                }
            }
		} else {
			return $this->response->redirect('admin'); 
		}  
    }
}
