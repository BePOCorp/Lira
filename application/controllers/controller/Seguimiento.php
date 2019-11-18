<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Seguimiento extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("CA_Docente_model");
        $this->load->model("CA_Seguimiento_model");
        $this->load->model("CA_Actividad_model");
        $this->load->model("CA_Plantrabajo_model");
    }
    public function index() {
        $data = array(
            'todoslosreportes' => $this->CA_Seguimiento_model->getReporteporPlan(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/seguimiento/list', $data);
        $this->load->view('layouts/footer');
    }
    
    public function add() {
        $iddocente = $this->session->userdata("idtb_usuario");
        $idactividad = $this->input->post("id_un_actividad");
        $data = array(
            
            'todaslasactividades' => $this->CA_Plantrabajo_model->getActividadPorDocente(),
            //'todoslosplanes' => $this->CA_Seguimiento_model->getPlantrabajoPorActividad(),
            'todoslosplanes' => $this->CA_Seguimiento_model->getPlantrabajoPorActividad($iddocente),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/seguimiento/add', $data);
        $this->load->view('layouts/footer');
    }
    
    public function registrar(){
        $idtb_plan_de_trabajo = $this->input->post("id_un_plan");
        $descripcion = $this->input->post("textarea");
        $data = array(
          'idtb_plan_de_trabajo' => $idtb_plan_de_trabajo,
          'descripcion' => $descripcion,
        );
        $this->CA_Seguimiento_model->save($data);
        redirect(base_url()."controller/seguimiento");
    }
}
