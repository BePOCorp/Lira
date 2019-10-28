<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Actividades extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Actividad_model");
    }
    public function index() {
        $data = array(
            'todaslasactividades' => $this->Actividad_model->getActividadTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/actividades/list', $data);
        $this->load->view('layouts/footer');
    }

    public function add() {
        $data = array(
            'actividad' => $this->Actividad_model->getActividadTodos(),
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

        if ($this->Actividad_model->save($data)) {
            redirect(base_url() . "mantenimiento/actividades");
        } else {
            $this->session->set_flashdata("error", "No se pudo guardar la informacion");
            redirect(base_url() . "mantenimiento/actividades/add");
        }
    }

    public function edit($id) {
        $data = array(
            'id' => $this->Categorias_model->getPlaza($id),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/categorias/edit', $data);
        $this->load->view('layouts/footer');
    }

    public function update() {
        $id = $this->input->post("id");
        $nombre = $this->input->post("nombre");
        $apellidos = $this->input->post("apellidos");
        $descripcion = $this->input->post("descripcion");
        echo $nombre . " " . $apellidos;
        $data = array(
            'nombre' => $nombre,
            'apellido' => $apellidos,
            'descripcion' => $descripcion,
        );

        if ($this->Categorias_model->update($id, $data)) {
            redirect(base_url() . "mantenimiento/categorias");
        } else {
            $this->session->set_flashdata("error", "No se pudo actualizar la informacion");
            redirect(base_url() . "mantenimiento/categorias/edit/" . $id);
        }
    }

    public function view($plaza) {
        $data = array(
            'id' =>$this->Categorias_modal->getPlaza($plaza),
        );
        $this->load->view("admin/categorias/view",$data);
    }

}
