<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model("Usuario_model");
    }

    public function index() {
        if($this->session->userdata("login")){
            redirect(base_url()."dashboard");
        }
        $this->load->view('admin/login');
    }

    public function login() {
        $username = $this->input->post("username");
        $password = $this->input->post("password");
        $res = $this->Usuario_model->login($username, $password);
        if (!$res) {
            $this->session->set_flashdata("Error", "El usuario y/o contraseña son incorrectos");
            redirect(base_url());
        } else {
            $data = array(
                //'id' => $res->id,
                'idtb_usuario' => $res->idtb_usuario,
                'nombre' => $res->nombre,
                'idtb_tipo_usuario' => $res->rol,
                'login' => TRUE,
            );
            $this->session->set_userdata($data);
            redirect(base_url() . "dashboard");
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect(base_url());
    }

}
