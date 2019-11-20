<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Tipo_model extends CI_Model {
    
    public function getTipoTodos(){
//        $this->db;
//        $resultados = $this->db->get("tb_tipo");
        $this->db->select("id id_tipo, descripcion");
        $resultados = $this->db->get("tipo");
        return $resultados->result();
    }
    
    
}
