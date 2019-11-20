<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Usuario_model extends CI_Model {
    
    public function login($username, $password){
        $this->db->select("id, nombres, apellido_paterno, apellido_materno, usuario, clave, id_tipo_docente");
        $this->db->where("usuario",$username);
        $this->db->where("clave",$password);
//        $resultados = $this->db->get("tb_usuario");
        $resultados = $this->db->get("docente");
        if($resultados->num_rows() > 0){
            return $resultados->row();
        }else{
            return FALSE;
        }
    }
    public function save($data){
//        return $this->db->insert("tb_usuario",$data);
        return $this->db->insert("usuario",$data);
    }
    public function lastID(){
        return $this->db->insert_id();
    }
    public function update($id,$data){
//        $this->db->where("idtb_usuario",$id);
//        return $this->db->update("tb_usuario",$data);
        $this->db->where("id",$id);
        return $this->db->update("usuario",$data);
    }
}
