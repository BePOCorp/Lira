<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cargas extends CI_Controller {
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
            'todaslascargas' => $this->CA_Carga_model->getCargaTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cargas/list', $data);
        $this->load->view('layouts/footer');
    }
    public function add() {
        $data = array(
            'todoslosdocentes' => $this->CA_Docente_model->getDocenteTodos(),
            'todoslossemestres' => $this->CA_Semestre_model->getSemestreTodos(),
            'todoslosciclos' => $this->CA_Ciclo_model->getCicloTodos(),
            'todosloscursos' => $this->CA_Curso_model->getCursoTodos(),
            'todoslosdias' => $this->CA_Dia_model->getDiaTodos(),
            'todoslosturnos' => $this->CA_Turno_model->getTurnoTodos(),
            'todoslossecciones' => $this->CA_Seccion_model->getSeccionTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/cargas/add', $data);
        $this->load->view('layouts/footer');
    }
    public function getcursos(){
        $valor = $this->input->post("valor");
        $cursos = $this->CA_Carga_model->getcursos($valor);
        echo json_encode($cursos);
    }
    public function getdias(){
        $valor = $this->input->post("valor");
        $dias = $this->CA_Carga_model->getdias($valor);
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
        if($this->CA_Carga_model->save($data)){
            $idcarga = $this->CA_Carga_model->lastID();
            $this->registrar_detalle($idcarga, $iddias, $todas_las_horas_inicio, $todas_las_horas_fin);
            redirect(base_url()."controller/cargas");
        }else{
            redirect(base_url()."controller/cargas/add");
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
            $this->CA_Carga_model->save_detalle($data);
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
