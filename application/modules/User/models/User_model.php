<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
    function getAllData() 
    {
        $this->db->select('*');
        $this->db->from('pengguna');
        $query = $this->db->get();
        return $query;
    }
}