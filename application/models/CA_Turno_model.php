<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Turno_model extends CI_Model {
    
    public function getTurnoTodos(){
//        $this->db;
//        $resultados = $this->db->get("tb_turno");
        $this->db->select("id id_turno, codigo, descripcion");
        $resultados = $this->db->get("turno");
        return $resultados->result();
    }
}
