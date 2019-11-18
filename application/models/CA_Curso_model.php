<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Curso_model extends CI_Model {
    
    public function getCursoTodos(){
        $this->db->select("cu.*, ci.descripcion as ciclo");
        $this->db->from("tb_curso cu");
        $this->db->join("tb_ciclo ci", "cu.idtb_ciclo = ci.idtb_ciclo");
        $resultados = $this->db->get();
        return $resultados->result();
    }
}
