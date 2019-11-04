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
            'todaslasactividades' => $this->Plantrabajo_model->getActividadPorDocente(),
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
    
    public function registrar(){ 
        $semana = $this->input->post("semana");
        $id = $this->input->post("id_un_actividad");
        $descripcion = $this->input->post("plantrabajo"); 
        $data= array(
            'descripcion' => $descripcion,
            'idtb_carga_no_lectiva' => $id,//$this->Plantrabajo_model->getID($id),
            'idtb_numero_semana' => $semana,//$this->Plantrabajo_model->getIDSemana($semana),
            'cumplimiento' => '1',
        );
        if($this->Plantrabajo_model->save($data)){
            redirect(base_url()."mantenimiento/plantrabajo");
        }else{
            redirect(base_url()."mantenimiento/plantrabajo/add");
        }
    }

}
