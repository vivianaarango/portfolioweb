<?php

class IndexController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Idea Design');
    }

    public function indexAction()
    {   
        return $this->response->redirect('web/index'); 
    }

    /*Valida usuario*/
    public function loginAction()
    {   
        $auth = $this->session->get('auth');
		if (!$auth){
			if ($this->request->isPost()){ 

                $email = $_POST["email"];
                $pass = $_POST["pass"];
                $pass = hash('sha256', $pass);
    
                $user = User::findFirst(array(
                    "conditions" => "email = ?1 and password = ?2",
                    "bind" => array(1 => $email,
                                    2 => $pass)
                ));
                
                if (isset($user->id_user)) {
                    $this->session->set('auth', $email);
                    return $this->response->redirect("admin");
                } else {
                    return $this->response->redirect("index/login");
                }
            } 
		} else {
			return $this->response->redirect("admin");
		}
    }

    public function logoutAction()
    {      
        $this->session->destroy();
        $this->response->redirect('index/login');
        
    }
}
