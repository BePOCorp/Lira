<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Actividad_model extends CI_Model {
    
    public function getActividadTodos(){
        $resultados = $this->db->get("tb_actividad");
        return $resultados->result();
    }
    public function save($data){
        return $this->db->insert("tb_actividad", $data);
    }
    public function getActividad($idactividad){
        $this->db->where("idtb_actividad",$idactividad);
        $resultado = $this->db->get("tb_actividad");
        return $resultado->row();
    }
    public function update($id,$data){
        $this->db->where("idtb_actividad",$id);
        return $this->db->update("tb_actividad",$data);
    }
}
