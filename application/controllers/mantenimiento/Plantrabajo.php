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
        $data = array(
            'todoslosplan' => $this->Plantrabajo_model->getPlantrabajo(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/plantrabajo/list', $data);
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
        $carga_no_lectiva = $this->input->post("id_un_actividad");
        $descripcion = $this->input->post("plantrabajo"); 
        $numero_de_semana =$this->input->post("semanas");
        $this->registrar_plantrabajo($descripcion, $carga_no_lectiva, $numero_de_semana);
        redirect(base_url()."mantenimiento/plantrabajo");
    }
    
    protected function registrar_plantrabajo( $descripcion, $carga_no_lectiva, $numero_de_semana) {
        for($i = 0; $i < count($descripcion); $i++){
            $data = array(
                'idtb_carga_no_lectiva' => $carga_no_lectiva,
                'descripcion' => $descripcion[$i],
                'idtb_numero_semana' => $numero_de_semana[$i],
                'cumplimiento' => '1',
            );
            $this->Plantrabajo_model->save($data);
        }
    }

}
