<?php
class Category extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Category_model', 'category_model');
        $this->load->model('Visitor_model', 'visitor_model');
        $this->load->model('Blog_model', 'blog_model');
        $this->load->model('Site_model', 'site_model');
        $this->visitor_model->count_visitor();
        $this->load->helper('text');
        error_reporting(0);
    }

    function index()
    {
        redirect('blog');
    }

    function detail($slug)
    {
        $data = $this->category_model->get_blog_by_category($slug);
        if ($data->num_rows() > 0) {
            $q = $data->row_array();
            $category_id = $q['category_id'];
            $kategori_nama = $q['category_name'];
            $jum = $data;
            $page = $this->uri->segment(3);
            if (!$page):
                $offset = 0;
            else:
                $offset = $page;
            endif;
            $limit = 10;
            $config['base_url'] = base_url() . 'category/' . $slug . '/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['use_page_numbers'] = true;

            //Tambahan untuk styling
            $config['full_tag_open'] = "<ul class='pagination'>";
            $config['full_tag_close'] = "</ul>";
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';
            $config['cur_tag_open'] =
                "<li class='disabled'><li class='active'><a href='#'>";
            $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
            $config['next_tag_open'] = "<li>";
            $config['next_tagl_close'] = "</li>";
            $config['prev_tag_open'] = "<li>";
            $config['prev_tagl_close'] = "</li>";
            $config['first_tag_open'] = "<li>";
            $config['first_tagl_close'] = "</li>";
            $config['last_tag_open'] = "<li>";
            $config['last_tagl_close'] = "</li>";

            $config['first_link'] = '<';
            $config['last_link'] = '>';
            $config['next_link'] = '>>';
            $config['prev_link'] = '<<';
            $this->pagination->initialize($config);
            $x['page'] = $this->pagination->create_links();
            $x['data'] = $this->category_model->blog_category_perpage(
                $category_id,
                $offset,
                $limit
            );
            $x['judul'] = $kategori_nama;
            $x['description'] =
                "Kumpulan artikel " .
                $kategori_nama .
                " yang bermanfaat untuk menambah wawasan Anda.";
            if (empty($this->uri->segment(3))) {
                $next_page = 2;
                $x['canonical'] = site_url('category/' . $slug);
                $x['url_prev'] = "";
            } elseif ($this->uri->segment(3) == '1') {
                $next_page = 2;
                $x['canonical'] = site_url('category/' . $slug);
                $x['url_prev'] = site_url('category/' . $slug);
            } elseif ($this->uri->segment(3) == '2') {
                $next_page = $this->uri->segment(3) + 1;
                $x['canonical'] = site_url(
                    'category/' . $slug . '/' . $this->uri->segment(3)
                );
                $x['url_prev'] = site_url('category/' . $slug);
            } else {
                $next_page = $this->uri->segment(3) + 1;
                $prev_page = $this->uri->segment(3) - 1;
                $x['canonical'] = site_url(
                    'category/' . $slug . '/' . $this->uri->segment(3)
                );
                $x['url_prev'] = site_url(
                    'category/' . $slug . '/' . $prev_page
                );
            }

            $x['url_next'] = site_url('category/' . $slug . '/' . $next_page);
            $x['populer_post'] = $this->blog_model->get_popular_post();
            $x['header'] = $this->load->view('header', '', true);
            $x['footer'] = $this->load->view('footer', '', true);
            $site = $this->site_model->get_site_data()->row_array();
            $x['site_name'] = $site['site_name'];
            $x['site_twitter'] = $site['site_twitter'];
            $this->load->view('blog_category_view', $x);
        } else {
            redirect('blog');
        }
    }
}
