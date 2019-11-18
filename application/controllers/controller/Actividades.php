<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Actividades extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("CA_Actividad_model");
    }
    public function index() {
        $data = array(
            'todaslasactividades' => $this->CA_Actividad_model->getActividadTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/actividades/list', $data);
        $this->load->view('layouts/footer');
    }

    public function add() {
        $data = array(
            'actividad' => $this->CA_Actividad_model->getActividadTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/actividades/add', $data);
        $this->load->view('layouts/footer');
    }

    public function registrar() {
        $actividad = $this->input->post("actividad");
        
        $data = array(
            'descripcion' => $actividad,
        );

        if ($this->CA_Actividad_model->save($data)) {
            redirect(base_url() . "controller/actividades");
        } else {
            $this->session->set_flashdata("error", "No se pudo guardar la informacion");
            redirect(base_url() . "controller/actividades/add");
        }
    }

    public function edit($id) {
        $data = array(
            'unaactividad' => $this->CA_Actividad_model->getActividad($id),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/actividades/edit', $data);
        $this->load->view('layouts/footer');
    }

    public function update() {
        $actividad = $this->input->post("actividad");
        $descripcion = $this->input->post("descripcion");
        $data_actividad = array(
            'descripcion' => $descripcion,
        );
        if ($this->CA_Actividad_model->update($actividad, $data_actividad)) {
                redirect(base_url() . "controller/actividades");
        } else {
            $this->session->set_flashdata("error", "No se pudo actualizar la informacion");
            redirect(base_url() . "controller/actividades/edit/" . $actividad);
        }
    }

    public function view($plaza) {
        $data = array(
            'id' =>$this->Categorias_modal->getPlaza($plaza),
        );
        $this->load->view("admin/categorias/view",$data);
    }

}
