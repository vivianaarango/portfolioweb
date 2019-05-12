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

            if ( $post['id_project'] != null ) {
                $project = Projects::findFirst($post['id_project']);
                $this->view->project = $project;
            } else {
                $project = Projects::findFirst($post['id']);

                if (isset($project->id_project)){
                    $project->color = $post['color'];
                    $project->image = $post['image'];
                    $project->text_alignment = $post['align'];
                    $project->text1 = $post['text1'];
                    $project->text2 = $post['text2'];
                    $project->text3 = isset($post['text3']) ? $post['text3'] : '';
                    $project->text4 = $post['text4'];

                    if ( $project->save() ){ 
                        $this->flash->success('dfbsdb');
                    } else {
                        $this->flash->success(';o');
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
            $project->image = $post['image'];
            $project->text_alignment = $post['align'];
            $project->text1 = $post['text1'];
            $project->text2 = $post['text2'];
            $project->text3 = isset($post['text3']) ? $post['text3'] : '';
            $project->text4 = $post['text4'];

            if ( $project->save() ){ 
                $this->flash->success('dfbsdb');
            } else {
                $this->flash->success(';o');
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
                $this->flash->success('dfbsdb');
            } else {
                $this->flash->success(';o');
            }

            $this->response->redirect('admin');

		} else {
			return $this->response->redirect('admin'); 
		}
    }
}
