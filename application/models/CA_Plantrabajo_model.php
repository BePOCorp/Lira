<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Plantrabajo_model extends CI_Model {

    public function getPlantrabajo(){
        $this->db->select("pt.descripcion plantrabajo, sem.descripcion semana, a.descripcion actividad");
        $this->db->from("tb_plan_de_trabajo as pt");
        $this->db->join("tb_numero_semana sem", "pt.idtb_numero_semana = sem.idtb_numero_semana");
        $this->db->join("tb_carga_no_lectiva cnl", "pt.idtb_carga_no_lectiva = cnl.idtb_carga_no_lectiva");
        $this->db->join("tb_actividad a","cnl.idtb_actividad=a.idtb_actividad");
        $resultados = $this->db->get();
        return $resultados->result();
    }
    
    public function getSemana($semana) {
        $this->db->select("idtb_numero_semana, descripcion as label");
        $this->db->from("tb_numero_semana");
        $this->db->like("descripcion", $semana);
        $resultados = $this->db->get();
        return $resultados->result_array();
    }

    public function save($data) {
        return $this->db->insert("tb_plan_de_trabajo", $data);
    }

    public function getID($valor) {
        $this->db->select("idtb_carga_no_lectiva");
        $this->db->from("tb_carga_no_lectiva");
        $this->db->where("idtb_actividad", $valor);
        $resultados = $this->db->get();
        return $resultados->result();
    }

    public function getIDSemana($valor) {
        $this->db->select("idtb_numero_semana");
        $this->db->from("tb_numero_semana");
        $this->db->where("idtb_numero_semana", $valor);
        $resultados = $this->db->get();
        return $resultados->result();
    }
    
    //$this->session->userdata("idtb_tipo_usuario")
    public function getActividadPorDocente(){
        $this->db->select("act.*, cnl.idtb_carga_no_lectiva");
        $this->db->from("tb_actividad act");
        $this->db->join("tb_carga_no_lectiva cnl", "cnl.idtb_actividad = act.idtb_actividad");
        $this->db->join("tb_docente doc", "cnl.idtb_docente = doc.idtb_docente");
        $this->db->join("tb_usuario usu", "doc.idtb_usuario = usu.idtb_usuario");
        $this->db->where("usu.idtb_usuario", $this->session->userdata("idtb_usuario"));
        $resultados = $this->db->get();
        return $resultados->result();
    }
}
