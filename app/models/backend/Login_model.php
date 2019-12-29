<?php
class Login_model extends CI_Model{

	function auth($username,$password){
        $result = $this->db->query("SELECT * FROM tbl_user WHERE user_email='$username' AND user_password=MD5('$password') LIMIT 1");
        return $result;
    }

} 