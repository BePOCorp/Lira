<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cargalectivapordocente extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("CA_Carga_model");
        $this->load->model("CA_Docente_model");
        $this->load->model("CA_Curso_model");
        $this->load->model("CA_Semestre_model");
        $this->load->model("CA_Ciclo_model");
        $this->load->model("CA_Dia_model");
        $this->load->model("CA_Seccion_model");
        $this->load->model("CA_Turno_model");
    }
    public function index() {
        $data = array(
            'todaslascargaspordocente' => $this->CA_Carga_model->getCargaTodosPorDocente(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cargalectivapordocente/list', $data);
        $this->load->view('layouts/footer');
    }    
}
