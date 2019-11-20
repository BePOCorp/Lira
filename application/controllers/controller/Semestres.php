<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Semestres extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("CA_Semestre_model");
        $this->load->model("CA_Tipo_model");
    }
    public function index() {
        $data = array(
            'todoslossemestres' => $this->CA_Semestre_model->getSemestreTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/semestres/list', $data);
        $this->load->view('layouts/footer');
    }
    public function add() {
        $data = array (
            'todoslostipos' => $this->CA_Tipo_model->getTipoTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/semestres/add', $data);
        $this->load->view('layouts/footer');
    }
    public function registrar() {
        $descripcion = $this->input->post("descripcion");
        $tipolista = $this->input->post("tipolista");
        $data_semestre = array(
            'descripcion' => $descripcion,
//            'idtb_tipo' => $tipolista
            'id_tipo' => $tipolista
        );
        if ($this->CA_Semestre_model->save($data_semestre)) {
            redirect(base_url() . "controller/semestres");
        } else {
            $this->session->set_flashdata("error", "No se pudo guardar la informacion");
            redirect(base_url() . "controller/semestres/add");
        }
    }
    public function edit($idsemestre) {
        $data = array(
            'unsemestre' => $this->CA_Semestre_model->getSemestre($idsemestre),
            'tipos' => $this->CA_Tipo_model->getTipoTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/semestres/edit', $data);
        $this->load->view('layouts/footer');
    }
    public function update() {
        $semestre = $this->input->post("semestre");
        $descripcion = $this->input->post("descripcion");
        $tipolista = $this->input->post("tipolista");
        $data_semestre = array(
            'descripcion' => $descripcion,
//            'idtb_tipo' => $tipolista,
            'id_tipo' => $tipolista,
        );
        if ($this->CA_Semestre_model->update($semestre, $data_semestre)) {
                redirect(base_url() . "controller/semestres");
        } else {
            $this->session->set_flashdata("error", "No se pudo actualizar la informacion");
            redirect(base_url() . "controller/semestres/edit/" . $semestre);
        }
    }
}
