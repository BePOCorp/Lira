<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CA_Carga_model extends CI_Model {
    
    public function getCargaTodos(){
        $this->db->select("car.*, sem.descripcion as semestre, CONCAT(usu.nombre, ' ', usu.apellido) as docente, sec.descripcion as seccion, tur.descripcion as turno, cur.descripcion as curso");
        $this->db->from("tb_carga car");
        $this->db->join("tb_semestre sem", "car.idtb_semestre = sem.idtb_semestre");
        $this->db->join("tb_docente doc", "car.idtb_docente = doc.idtb_docente");
        $this->db->join("tb_usuario usu", "doc.idtb_usuario = usu.idtb_usuario");
        $this->db->join("tb_seccion sec", "car.idtb_seccion = sec.idtb_seccion");
        $this->db->join("tb_turno tur", "car.idtb_turno = tur.idtb_turno");
        $this->db->join("tb_curso cur", "car.idtb_curso = cur.idtb_curso");
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
        return $this->db->insert("tb_carga", $data);
    }
    public function lastID(){
        return $this->db->insert_id();
    }
    public function save_detalle($data){
        $this->db->insert("tb_horario", $data);
    }
    
    
    
    public function getCargaTodosPorDocente(){
        $this->db->select("car.*, sem.descripcion as semestre, CONCAT(usu.nombre, ' ', usu.apellido) as docente, sec.descripcion as seccion, tur.descripcion as turno, cur.descripcion as curso");
        $this->db->from("tb_carga car");
        $this->db->join("tb_semestre sem", "car.idtb_semestre = sem.idtb_semestre");
        $this->db->join("tb_docente doc", "car.idtb_docente = doc.idtb_docente");
        $this->db->join("tb_usuario usu", "doc.idtb_usuario = usu.idtb_usuario");
        $this->db->join("tb_seccion sec", "car.idtb_seccion = sec.idtb_seccion");
        $this->db->join("tb_turno tur", "car.idtb_turno = tur.idtb_turno");
        $this->db->join("tb_curso cur", "car.idtb_curso = cur.idtb_curso");
        $resultados = $this->db->get();
        return $resultados->result();
        //$this->db->where("usu.idtb_usuario", $this->session->userdata("idtb_usuario"));
    }
}
