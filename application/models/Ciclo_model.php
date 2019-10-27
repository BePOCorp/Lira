<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ciclo_model extends CI_Model {
    
    public function getCicloTodos(){
        $resultados = $this->db->get("tb_ciclo");
        return $resultados->result();
    }
}
