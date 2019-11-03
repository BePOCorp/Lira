<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Seguimiento extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Docente_model");
//        $this->load->model("Seguimiento_model");
    }
    public function index() {
//        $data = array(
//            'todaslascargas' => $this->Carga_model->getCargaTodos(),
//        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/seguimiento/list');
        $this->load->view('layouts/footer');
    }
    
    public function add() {
        
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/seguimiento/add');
        $this->load->view('layouts/footer');
    }
}
