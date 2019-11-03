<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Plantrabajo_model extends CI_Model {

    
    
    public function getSemana($semana){
        $this->db->select("idtb_numero_semana, descripcion as label");
        $this->db->from("tb_numero_semana");
        $this->db->like("descripcion", $semana);
        $resultados = $this->db->get();
        return $resultados->result_array();
    }
    
}