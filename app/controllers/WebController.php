<?php

class WebController extends ControllerBase
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
    * Correo electronico de contacto
    */
    public function sendEmailAction()
    {

        if ( $this->request->isPost() ){ 

            include_once ControllerBase::URLMAIL;
            include_once ControllerBase::URLMAILCONFIG;

            $name = strip_tags(trim($_POST["name_user"]));
            $name = str_replace(array("\r","\n"),array(" "," "),$name);
            $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
            $message = strip_tags(trim($_POST["message"]));

            if ( empty($name) OR !filter_var($email, FILTER_VALIDATE_EMAIL)) {
                http_response_code(400);
                echo "Oops! There was a problem with your submission. Please complete the form and try again.";
                exit;
            }
           
            $email_content = "<b> Has recibido un mensaje de contacto </b> <br> <br>";
            $email_content .= "<b> Nombre: </b> $name <br>";
            $email_content .= "<b> Correo electronico: </b> $email <br>";
            $email_content .= "<b> Mensaje: </b> <br> $message <br>";

            $receiver = 'idmr13@gmail.com';
            $mail->From = $email;
            $mail->FromName = "Portafolio Web Contactanos";
            $mail->Subject = "Portafolio Web Contactanos";
            $mail->MsgHTML($email_content);
            $mail->AddAddress($receiver, $name);
            $mail->Send();

            return $this->response->redirect("web/index");

        } else {

            return $this->response->redirect("web/index");           
        }
    }

    /*
    * Detalle del proyecto seleccionado
    */
    public function detailAction()
    {
        
    }
}
