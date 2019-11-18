<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Asignar_model extends CI_Model {
    
    public function getAsignacionTodos(){
        $this->db->select("asi.*, CONCAT(usu.nombre, ' ', usu.apellido) as docente, act.descripcion as actividad");
        $this->db->from("tb_carga_no_lectiva asi");
        $this->db->join("tb_docente doc", "asi.idtb_docente = doc.idtb_docente");
        $this->db->join("tb_usuario usu", "doc.idtb_usuario = usu.idtb_usuario");
        $this->db->join("tb_actividad act", "asi.idtb_actividad = act.idtb_actividad");
        $resultados = $this->db->get();
        return $resultados->result();
    }
    public function getcursos($valor){
        //Por estandar
        $this->db->select("idtb_curso, codigo, descripcion as label, creditos, idtb_ciclo");
        $this->db->from("tb_curso");
        $this->db->like("descripcion", $valor);
        $resultados = $this->db->get();
        return $resultados->result_array();
    }
    public function getdias($valor){
        //Por estandar
        $this->db->select("idtb_dia, descripcion as label");
        $this->db->from("tb_dia");
        $this->db->like("descripcion", $valor);
        $resultados = $this->db->get();
        return $resultados->result_array();
    }
    public function save($data){
        return $this->db->insert("tb_carga_no_lectiva", $data);
    }
    public function lastID(){
        return $this->db->insert_id();
    }
    public function save_detalle($data){
        $this->db->insert("tb_horario", $data);
    }
}