<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Package_model extends CI_Model {
    function getAllData() 
    {
        $this->db->select('*');
        $this->db->from('paket');
        $query = $this->db->get();
        return $query;
    }
}