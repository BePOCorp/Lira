<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cursos extends CI_Controller {
    
    private $permisos;
    
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        
        $this->permisos = $this->backend_lib->control();
        
        $this->load->model("CA_Curso_model");
        $this->load->model("CA_Ciclo_model");
    }
    public function index() {
        $data = array(
            'todosloscursos' => $this->CA_Curso_model->getCursoTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cursos/list', $data);
        $this->load->view('layouts/footer');
    }

}
