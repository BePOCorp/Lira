<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Docentes extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model("Usuario_model");
        $this->load->model("Docente_model");
        $this->load->model("Tipo_Docente_model");
    }
    public function index() {
        $data = array(
            'docentes' => $this->Docente_model->getDocenteTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/docentes/list', $data);
        //$this->load->view('admin/categorias/datatable', $data);
        $this->load->view('layouts/footer');
    }
    public function add() {
        $data = array (
            'tiposdocentes' => $this->Tipo_Docente_model->getTipoDocenteTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/docentes/add', $data);
        $this->load->view('layouts/footer');
    }
    public function registrar() {
        $codigo = $this->input->post("codigo");
        $documento = $this->input->post("documento");
        $nombre = $this->input->post("nombre");
        $apellido = $this->input->post("apellido");
        $tipodocentelista = $this->input->post("tipodocentelista");
        $data_usuario = array(
            'nombre' => $nombre,
            'apellido' => $apellido,
            'idtb_tipo_usuario' => "2"  //Docente
        );
        if ($this->Usuario_model->save($data_usuario)) {
            $idtb_usuario = $this->Usuario_model->lastID();
            $data_docente = array(
                'codigo' => $codigo,
                'documento' => $documento,
                'idtb_tipo_docente' => $tipodocentelista,            
                'idtb_usuario' => $idtb_usuario
            );            
            if ($this->Docente_model->save($data_docente)) {
                redirect(base_url() . "mantenimiento/docentes");
            } else {
                $this->session->set_flashdata("error", "No se pudo guardar la informacion");
                redirect(base_url() . "mantenimiento/docentes/add");
            }
        } else {
            $this->session->set_flashdata("error", "No se pudo guardar la informacion");
            redirect(base_url() . "mantenimiento/docentes/add");
        }
    }
    public function edit($iddocente) {
        $data = array(
            'undocente' => $this->Docente_model->getDocente($iddocente),
            'tiposdocentes' => $this->Tipo_Docente_model->getTipoDocenteTodos(),
        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/aside');
        $this->load->view('admin/docentes/edit', $data);
        $this->load->view('layouts/footer');
    }
    public function update() {
        $docente = $this->input->post("docente");
        $usuario = $this->input->post("usuario");
        $codigo = $this->input->post("codigo");
        $documento = $this->input->post("documento");
        $nombre = $this->input->post("nombre");
        $apellido = $this->input->post("apellido");
        $tipodocentelista = $this->input->post("tipodocentelista");
        //$tipousuario = $this->input->post("tipousuario");
        $data_usuario = array(
            'nombre' => $nombre,
            'apellido' => $apellido,
        );
        if ($this->Usuario_model->update($usuario, $data_usuario)) {
            $data_docente = array(
                'codigo' => $codigo,
                'documento' => $documento,
                'idtb_tipo_docente' => $tipodocentelista
            );
            if ($this->Docente_model->update($docente, $data_docente)) {
                redirect(base_url() . "mantenimiento/docentes");
            } else {
                $this->session->set_flashdata("error", "No se pudo actualizar la informacion");
                redirect(base_url() . "mantenimiento/docentes/edit/" . $docente);
            }
        } else {
            $this->session->set_flashdata("error", "No se pudo actualizar la informacion");
            redirect(base_url() . "mantenimiento/docentes/edit/" . $docente);
        }
    }
}
