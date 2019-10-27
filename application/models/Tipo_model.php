<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tipo_model extends CI_Model {
    
    public function getTipoTodos(){
        $this->db;
        $resultados = $this->db->get("tb_tipo");
        return $resultados->result();
    }
    
    
}
