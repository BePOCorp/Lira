<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Categorias extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Categoria_model");
    }
    public function index() {
        $data = array(
            'categorias' => $this->Categoria_model->getCategoriasTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/categorias/list', $data);
        //$this->load->view('admin/categorias/datatable', $data);
        $this->load->view('layouts/footer');
    }

    public function add() {
        $data = array(
            'categorias' => $this->Categoria_model->getCategoriasTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/categorias/add');
        $this->load->view('layouts/footer');
    }

    public function registrar() {
        $plaza = $this->input->post("plaza");
        $nombre = $this->input->post("nombre");
        $apellidos = $this->input->post("apellidos");
        $descripcion = $this->input->post("descripcion");

        $data = array(
            'id' => $plaza,
            'nombre' => $nombre,
            'apellido' => $apellidos,
            'descripcion' => $descripcion,
            'estado' => "1"
        );

        if ($this->Categorias_model->save($data)) {
            redirect(base_url() . "mantenimiento/categorias");
        } else {
            $this->session->set_flashdata("error", "No se pudo guardar la informacion");
            redirect(base_url() . "mantenimiento/categorias/add");
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
