<?php

class Category_model extends CI_Model
{
    function get_blog_by_category($slug)
    {
        $query = $this->db->query("SELECT tbl_post.*,tbl_category.* FROM
			tbl_post LEFT JOIN tbl_category ON post_category_id=category_id
			WHERE category_slug='$slug'");
        return $query;
    }

    function blog_category_perpage($category_id, $offset, $limit)
    {
        $query = $this->db
            ->query("SELECT tbl_post.*,tbl_category.*,user_name FROM
			tbl_post LEFT JOIN tbl_category ON post_category_id=category_id
			LEFT JOIN tbl_user ON post_user_id=user_id
			WHERE category_id='$category_id' LIMIT $offset,$limit");
        return $query;
    }
}
