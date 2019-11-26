<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        if(!$this->session->userdata("login")){
            redirect(base_url());
        }
//        $this->load->view('layouts/header');
//        $this->load->view('layouts/aside');
//        $this->load->view('admin/dashboard');
//        $this->load->view('layouts/footer');
        
        if ($this->session->userdata("tipo_de_usuario") == "docente" ) {
            $this->load->view('layouts/header');
            $this->load->view('layouts/aside');
            $this->load->view('admin/dashboard');
            $this->load->view('layouts/footer');
        } else {
            $this->load->view('layouts/header');
            $this->load->view('layouts/asideadministrativo');
            $this->load->view('admin/dashboard');
            $this->load->view('layouts/footer');
        }
    }

}
