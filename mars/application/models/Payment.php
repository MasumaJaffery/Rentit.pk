<?php defined('BASEPATH') OR exit('No direct script access allowed'); 
 
class Payment extends CI_Model{
     
    /* 
     * Fetch payment data from the database 
     * @param id returns a single record if specified, otherwise all records 
     */ 
    public function getPayment($conditions = array()){ 
        $this->db->select('*'); 
        $this->db->from('payments'); 
         
        if(!empty($conditions)){ 
            foreach($conditions as $key=>$val){ 
                $this->db->where($key, $val); 
            } 
        } 
         
        $result = $this->db->get(); 
        return ($result->num_rows() > 0)?$result->row_array():false; 
    } 
     
    /* 
     * Insert payment data in the database 
     * @param data array 
     */ 
    public function insertTransaction($data){ 
        $insert = $this->db->insert('payments',$data); 
        return $insert?true:false; 
    }    
}