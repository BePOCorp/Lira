<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Semestre_model extends CI_Model {
    
    public function getSemestreTodos(){
        $this->db->select("se.*, ti.descripcion as tipo");
        $this->db->from("tb_semestre se");
        $this->db->join("tb_tipo ti", "se.idtb_tipo = ti.idtb_tipo");
        $resultados = $this->db->get();
        return $resultados->result();
    }
    public function save($data){
        return $this->db->insert("tb_semestre",$data);
    }
    public function getSemestre($idsemestre){
        $this->db->select("se.*, ti.idtb_tipo as idtipo, ti.descripcion as tipo");
        $this->db->from("tb_semestre se");
        $this->db->join("tb_tipo ti", "se.idtb_tipo = ti.idtb_tipo");
        $this->db->where("se.idtb_semestre",$idsemestre);
        $resultado = $this->db->get();
        return $resultado->row();
    }
    public function update($id,$data){
        $this->db->where("idtb_semestre",$id);
        //echo "<script>console.log('Debug Objects: " . $id . "' );</script>";
        return $this->db->update("tb_semestre",$data);
    }
}
