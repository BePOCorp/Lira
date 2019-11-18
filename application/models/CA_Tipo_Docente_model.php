<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Tipo_Docente_model extends CI_Model {
    
    public function getTipoDocenteTodos(){
        $this->db;
        $resultados = $this->db->get("tb_tipo_docente");
        return $resultados->result();
    }
    
    
    public function getCategoriasPorEstado($Estado){
        $this->db->where("Estado", $Estado);
        $this->db;
        $resultados = $this->db->get("tb_categoria");
        return $resultados->result();   
    }
    public function save($data){
        return $this->db->insert("tb_categoria",$data);
    }
    public function getPlaza($plaza){
        $this->db->where("id",$plaza);
        $resultado = $this->db->get("tb_categoria");
        return $resultado->row();
    }
    public function update($id,$data){
        $this->db->where("id",$id);
        return $this->db->update("tb_categoria",$data);
    }
}
