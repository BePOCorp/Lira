<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Seguimiento_model extends CI_Model {

    public function getPlantrabajoPorActividad($idusuario){
        $this->db->select("pt.idtb_plan_de_trabajo idtb_plantrabajo, pt.descripcion plan_trabajo, sem.descripcion semana");
        $this->db->from("tb_plan_de_trabajo pt");
        $this->db->join("tb_numero_semana sem","pt.idtb_numero_semana = sem.idtb_numero_semana");
        $this->db->join("tb_carga_no_lectiva cnl"," pt.idtb_carga_no_lectiva=cnl.idtb_carga_no_lectiva");
        $this->db->join("tb_docente d","cnl.idtb_docente=d.idtb_docente");
        $this->db->join("tb_usuario u","d.idtb_usuario=d.idtb_usuario");
        
        //$this->db->where("u.idtb_usuario", $idusuario);
        $this->db->where("u.idtb_usuario", $this->session->userdata("idtb_usuario"));
        //$this->db->where("cnl.idtb_actividad", $idactividad);
        $resultados = $this->db->get();
        return $resultados->result();
    }
    
    public function save($data){
        return $this->db->insert("tb_carga_no_lectiva_detalle", $data);
    }
    
    public function getReporteporPlan(){
        $this->db->select("pt.descripcion plantrabajo, sem.descripcion semana, cnld.descripcion reporte, a.descripcion actividad");
        $this->db->from("tb_carga_no_lectiva_detalle cnld");
        $this->db->join("tb_plan_de_trabajo pt", "cnld.idtb_plan_de_trabajo=pt.idtb_plan_de_trabajo");
        $this->db->join("tb_numero_semana sem", "pt.idtb_numero_semana=sem.idtb_numero_semana");
        $this->db->join("tb_carga_no_lectiva cnl", "pt.idtb_carga_no_lectiva=cnl.idtb_carga_no_lectiva");
        $this->db->join("tb_actividad a", "cnl.idtb_actividad=a.idtb_actividad");
        $resultados = $this->db->get();
        return $resultados->result();
    }
}
