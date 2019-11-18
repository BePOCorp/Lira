<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Usuario_model extends CI_Model {
    
    public function login($username, $password){
        $this->db->where("usuario",$username);
        $this->db->where("clave",$password);
        $resultados = $this->db->get("tb_usuario");
        if($resultados->num_rows() > 0){
            return $resultados->row();
        }else{
            return FALSE;
        }
    }
    public function save($data){
        return $this->db->insert("tb_usuario",$data);
    }
    public function lastID(){
        return $this->db->insert_id();
    }
    public function update($id,$data){
        $this->db->where("idtb_usuario",$id);
        //echo "<script>console.log('Debug Objects: " . $id . "' );</script>";
        return $this->db->update("tb_usuario",$data);
    }
}
