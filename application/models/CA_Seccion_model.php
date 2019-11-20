<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Seccion_model extends CI_Model {
    
    public function getSeccionTodos(){
//        $this->db;
//        $resultados = $this->db->get("tb_seccion");
        $this->db->select("id id_seccion, descripcion, nombre");
        $resultados = $this->db->get("seccion");
        return $resultados->result();
    }
}
