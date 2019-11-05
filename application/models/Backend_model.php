<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Backend_model extends CI_Model {
    public function getID($link){
        $this->db->like("url",$link);
        $resultado = $this->db->get("tb_menu");
        return $resultado->row();
    }
    
    public function getPermisos($menu, $rol){
        $this->db->where("idtb_menu", $menu);
        $this->db->where("idtb_tipo_usuario", $rol);
        $resultado = $this->db->get("tb_permisos");
        return $resultado->row();
    }
}
