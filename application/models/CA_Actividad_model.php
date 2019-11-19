<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Actividad_model extends CI_Model {
    
    public function getActividadTodos(){
//        $resultados = $this->db->get("tb_actividad");
        $resultados = $this->db->get("actividad");
        return $resultados->result();
    }
    public function save($data){
//        return $this->db->insert("tb_actividad", $data);
        return $this->db->insert("actividad", $data);
    }
    public function getActividad($idactividad){
//        $this->db->where("idtb_actividad",$idactividad);
//        $resultado = $this->db->get("tb_actividad");
        $this->db->where("id_actividad",$idactividad);
        $resultado = $this->db->get("actividad");
        return $resultado->row();
    }
    public function update($id,$data){
//        $this->db->where("idtb_actividad",$id);
//        return $this->db->update("tb_actividad",$data);
        $this->db->where("id_actividad",$id);
        return $this->db->update("actividad",$data);
    }
}
