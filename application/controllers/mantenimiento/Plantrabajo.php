<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Plantrabajo extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        //(linea para el acceso)$this->permiso = $this->backend_lib->control();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Plantrabajo_model");
        $this->load->model("Actividad_model");
    }
    public function index() {
//        $data = array(
//            'todaslascargas' => $this->Carga_model->getCargaTodos(),
//        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/plantrabajo/list');
        $this->load->view('layouts/footer');
    }
    
    public function add() {
        $data = array(           
            'todaslasactividades' => $this->Actividad_model->getActividadTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/plantrabajo/add', $data);
        $this->load->view('layouts/footer');
    }
    
    public function getsemana(){
        $valor = $this->input->post("valor");
        $semana = $this->Plantrabajo_model->getsemana($valor);
        echo json_encode($semana);
    }
    
//    public function registrar(){
//        $ = 
//    }

}
