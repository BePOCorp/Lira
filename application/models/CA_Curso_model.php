<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Curso_model extends CI_Model {
    
    public function getCursoTodos(){
//        $this->db->select("cu.*, ci.descripcion as ciclo");
//        $this->db->from("tb_curso cu");
//        $this->db->join("tb_ciclo ci", "cu.idtb_ciclo = ci.idtb_ciclo");
        $this->db->select("cu.id id_curso, cu.nombre, cu.codigo, cu.descripcion, cu.creditos, ci.id id_ciclo, ci.descripcion ciclo");
        $this->db->from("curso cu");
        $this->db->join("ciclo ci", "cu.id_ciclo = ci.id");
        $resultados = $this->db->get();
        return $resultados->result();
    }
}
