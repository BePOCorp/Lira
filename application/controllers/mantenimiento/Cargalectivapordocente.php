<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cargalectivapordocente extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Carga_model");
        $this->load->model("Docente_model");
        $this->load->model("Curso_model");
        $this->load->model("Semestre_model");
        $this->load->model("Ciclo_model");
        $this->load->model("Dia_model");
        $this->load->model("Seccion_model");
        $this->load->model("Turno_model");
    }
    public function index() {
        $data = array(
            'todaslascargaspordocente' => $this->Carga_model->getCargaTodosPorDocente(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cargas/list', $data);
        $this->load->view('layouts/footer');
    }    
}
