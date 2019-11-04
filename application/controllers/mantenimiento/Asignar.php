<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Asignar extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Docente_model");
        $this->load->model("Dia_model");
        $this->load->model("Actividad_model");
        $this->load->model("Asignar_model");
    }
    public function index() {
        $data = array(
            'todaslasasignaciones' => $this->Asignar_model->getAsignacionTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/asignar/list', $data);
        $this->load->view('layouts/footer');
    }
    public function add() {
        $data = array(
            'todoslosdocentes' => $this->Docente_model->getDocenteTodos(),
            'todoslosdias' => $this->Dia_model->getDiaTodos(),
            'todaslasactividades' => $this->Actividad_model->getActividadTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/asignar/add', $data);
        $this->load->view('layouts/footer');
    }
    public function getcursos(){
        $valor = $this->input->post("valor");
        $cursos = $this->Carga_model->getcursos($valor);
        echo json_encode($cursos);
    }
    public function getdias(){
        $valor = $this->input->post("valor");
        $dias = $this->Carga_model->getdias($valor);
        echo json_encode($dias);
    }
    public function registrar(){
        $idtb_actividad = $this->input->post("id_un_actividad");
        $idtb_docente = $this->input->post("id_un_docente");            
        $horas = $this->input->post("horasdeactividad");
        $data = array(
            'idtb_actividad' => $idtb_actividad,
            'idtb_docente' => $idtb_docente,
            'horas' => $horas,
        );
        if($this->Asignar_model->save($data)){
            $idcarganolectiva = $this->Asignar_model->lastID();
            $this->registrar_detalle($idcarganolectiva, $iddias, $todas_las_horas_inicio, $todas_las_horas_fin);
            redirect(base_url()."mantenimiento/asignar");
        }else{
            redirect(base_url()."mantenimiento/asignar/add");
        }
    }
    

    protected function registrar_detalle($carga, $dias, $horas_inicio, $horas_fin) {
        for($i = 0; $i < count($dias); $i++){
            $data = array(
                'idtb_carga_no_lectiva' => $carga,
                'idtb_dia' => $dias[$i],
                'hora_inicio' => $horas_inicio[$i],
                'hora_fin' => $horas_fin[$i],
            );
            $this->Asignar_model->save_detalle($data);
        }
    }

    
    public function view(){
//        $idcarga = $this->input->post("idtb_carga");
//        $data = array(
//            "carga" => ,
//            "horario" => ,
//        );
        $this->load->view("admin/cargas/view");
    }
    
}

