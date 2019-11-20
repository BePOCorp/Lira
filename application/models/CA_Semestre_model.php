<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Semestre_model extends CI_Model {
    
    public function getSemestreTodos(){
//        $this->db->select("se.*, ti.descripcion as tipo");
//        $this->db->from("tb_semestre se");
//        $this->db->join("tb_tipo ti", "se.idtb_tipo = ti.idtb_tipo");
        $this->db->select("se.id id_semestre, se.numero, se.descripcion, se.id_tipo, ti.descripcion as tipo");
        $this->db->from("semestre se");
        $this->db->join("tipo ti", "se.id_tipo = ti.id");
        $resultados = $this->db->get();
        return $resultados->result();
    }
    public function save($data){
//        return $this->db->insert("tb_semestre",$data);
        return $this->db->insert("semestre",$data);
    }
    public function getSemestre($idsemestre){
//        $this->db->select("se.*, ti.idtb_tipo as idtipo, ti.descripcion as tipo");
//        $this->db->from("tb_semestre se");
//        $this->db->join("tb_tipo ti", "se.idtb_tipo = ti.idtb_tipo");
//        $this->db->where("se.idtb_semestre",$idsemestre);
        $this->db->select("se.*, ti.id as idtipo, ti.descripcion as tipo");
        $this->db->from("semestre se");
        $this->db->join("tipo ti", "se.id_tipo = ti.id");
        $this->db->where("se.id",$idsemestre);
        $resultado = $this->db->get();
        return $resultado->row();
    }
    public function update($id,$data){
//        $this->db->where("idtb_semestre",$id);
//        return $this->db->update("tb_semestre",$data);
        $this->db->where("id",$id);
        return $this->db->update("semestre",$data);
    }
}
