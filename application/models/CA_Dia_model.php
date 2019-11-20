<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Dia_model extends CI_Model {
    
    public function getDiaTodos(){
//        $resultados = $this->db->get("tb_dia");
        $resultados = $this->db->get("dia");
        return $resultados->result();
    }
}
