<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cursos extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Curso_model");
        $this->load->model("Ciclo_model");
    }
    public function index() {
        $data = array(
            'todosloscursos' => $this->Curso_model->getCursoTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cursos/list', $data);
        $this->load->view('layouts/footer');
    }

}
