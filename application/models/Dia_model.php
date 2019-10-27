<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dia_model extends CI_Model {
    
    public function getDiaTodos(){
        $resultados = $this->db->get("tb_dia");
        return $resultados->result();
    }
}
