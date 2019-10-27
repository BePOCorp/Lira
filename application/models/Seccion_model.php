<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Seccion_model extends CI_Model {
    
    public function getSeccionTodos(){
        $this->db;
        $resultados = $this->db->get("tb_seccion");
        return $resultados->result();
    }
}
