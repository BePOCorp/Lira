<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cargas extends CI_Controller {
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
            'todaslascargas' => $this->Carga_model->getCargaTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cargas/list', $data);
        $this->load->view('layouts/footer');
    }
    public function add() {
        $data = array(
            'todoslosdocentes' => $this->Docente_model->getDocenteTodos(),
            'todoslossemestres' => $this->Semestre_model->getSemestreTodos(),
            'todoslosciclos' => $this->Ciclo_model->getCicloTodos(),
            'todosloscursos' => $this->Curso_model->getCursoTodos(),
            'todoslosdias' => $this->Dia_model->getDiaTodos(),
            'todoslosturnos' => $this->Turno_model->getTurnoTodos(),
            'todoslossecciones' => $this->Seccion_model->getSeccionTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cargas/add', $data);
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
        $idtb_seccion = $this->input->post("idseccion");
        $idtb_turno = $this->input->post("idturno");
        //$idtb_curso = $this->input->post("idcurso");
        $idtb_curso = $this->input->post("id_un_curso");
        $idtb_semestre = $this->input->post("semestre");
        $idtb_docente = $this->input->post("id_un_docente");
        //$idtb_ciclo = $this->input->post("idciclo");
        
        $iddias = $this->input->post("arreglo_dias");
        $todas_las_horas_inicio = $this->input->post("arreglo_horas_inicio");
        $todas_las_horas_fin = $this->input->post("arreglo_horas_fin");
        
        $data = array(
            'idtb_seccion' => $idtb_seccion,
            'idtb_turno' => $idtb_turno,
            'idtb_curso' => $idtb_curso,
            'idtb_semestre' => $idtb_semestre,
            'idtb_docente' => $idtb_docente,
            //'idtb_ciclo' => $idtb_ciclo,
            //'idtb_ciclo' => "1",
        );
        if($this->Carga_model->save($data)){
            $idcarga = $this->Carga_model->lastID();
            $this->registrar_detalle($idcarga, $iddias, $todas_las_horas_inicio, $todas_las_horas_fin);
            redirect(base_url()."mantenimiento/cargas");
        }else{
            redirect(base_url()."mantenimiento/cargas/add");
        }
    }
    

    protected function registrar_detalle($carga, $dias, $horas_inicio, $horas_fin) {
        for($i = 0; $i < count($dias); $i++){
            $data = array(
                'idtb_carga' => $carga,
                'idtb_dia' => $dias[$i],
                'hora_inicio' => $horas_inicio[$i],
                'hora_fin' => $horas_fin[$i],
            );
            $this->Carga_model->save_detalle($data);
        }
    }

    
    public function view(){
        $idcarga = $this->input->post("idtb_carga");
        $data = array(
            "carga" => ,
            "horario" => ,
        );
        $this->load->view("admin/cargas/view");
    }
}
