<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Docente_model extends CI_Model {
    
    public function getDocenteTodos(){
        /*
        $this->db;
        $resultados = $this->db->get("tb_docente");
        */
        $this->db->select("d.*, td.descripcion as tipodocente, u.nombre as nombre, u.apellido as apellido, tu.descripcion as tipousuario");
        $this->db->from("tb_docente d");
        $this->db->join("tb_tipo_docente td", "d.idtb_tipo_docente = td.idtb_tipo_docente");
        $this->db->join("tb_usuario u ", "d.idtb_usuario = u.idtb_usuario");
        $this->db->join("tb_tipo_usuario tu", "u.idtb_tipo_usuario = tu.idtb_tipo_usuario");
        $this->db->where("tu.descripcion", "Docente");
        $resultados = $this->db->get();
        return $resultados->result();
    }
    public function getCategoriasPorEstado($Estado){
        $this->db->where("Estado", $Estado);
        $this->db;
        $resultados = $this->db->get("tb_categoria");
        return $resultados->result();
    }
    public function save($data){
        return $this->db->insert("tb_docente",$data);
    }
    public function getDocente($iddocente){
        $this->db->select("d.*, td.idtb_tipo_docente as idtipodocente, td.descripcion as tipodocente, u.nombre as nombre, u.apellido as apellido, tu.descripcion as tipousuario");
        $this->db->from("tb_docente d");
        $this->db->join("tb_tipo_docente td", "d.idtb_tipo_docente = td.idtb_tipo_docente");
        $this->db->join("tb_usuario u ", "d.idtb_usuario = u.idtb_usuario");
        $this->db->join("tb_tipo_usuario tu", "u.idtb_tipo_usuario = tu.idtb_tipo_usuario");
        $this->db->where("tu.descripcion", "Docente");
        $this->db->where("d.idtb_docente",$iddocente);
        //$resultado = $this->db->get("tb_docente");
        $resultado = $this->db->get();
        return $resultado->row();
    }
    public function update($id,$data){
        $this->db->where("idtb_docente",$id);
        //echo "<script>console.log('Debug Objects: " . $id . "' );</script>";
        return $this->db->update("tb_docente",$data);
    }
}
