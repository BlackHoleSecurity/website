<?php

class Tag_model extends CI_Model{
	
	function get_blog_by_tags($tag){
		$query = $this->db->query("SELECT tbl_post.*,user_name FROM tbl_post
			LEFT JOIN tbl_user ON post_user_id=user_id
			WHERE post_tags LIKE '%$tag%'");
		return $query;
	}

	function blog_tags_perpage($tag,$offset,$limit){
		$query = $this->db->query("SELECT tbl_post.*,user_name FROM tbl_post
			LEFT JOIN tbl_user ON post_user_id=user_id
			WHERE post_tags LIKE '%$tag%' LIMIT $offset,$limit");
		return $query;
	}
}