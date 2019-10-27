<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Turno_model extends CI_Model {
    
    public function getTurnoTodos(){
        $this->db;
        $resultados = $this->db->get("tb_turno");
        return $resultados->result();
    }
}
