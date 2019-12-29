<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Visitor_model', 'visitor_model');
        $this->load->model('Home_model', 'home_model');
        $this->load->model('Site_model', 'site_model');
        $this->visitor_model->count_visitor();
        $this->load->helper('text');
    }
    function index()
    {
        //$this->output->enable_profiler(TRUE);
        $site = $this->site_model->get_site_data()->row_array();
        $data['site_name'] = $site['site_name'];
        $data['site_title'] = $site['site_title'];
        $data['site_desc'] = $site['site_description'];
        $data['site_twitter'] = $site['site_twitter'];
        $data['post_header'] = $this->home_model->get_post_header();
        $data['post_header_2'] = $this->home_model->get_post_header_2();
        $data['post_header_3'] = $this->home_model->get_post_header_3();
        $data['latest_post'] = $this->home_model->get_latest_post();
        $data['popular_post'] = $this->home_model->get_popular_post();
        $data['header'] = $this->load->view('header', '', true);
        $data['footer'] = $this->load->view('footer', '', true);
        $this->load->view('home_view', $data);
    }

    function subscribe()
    {
        $this->load->library('form_validation');

        $this->form_validation->set_rules(
            'email',
            'Email',
            'required|valid_email'
        );
        if ($this->form_validation->run() == false) {
            $this->session->set_flashdata(
                'msg',
                '<div class="alert alert-danger">Mohon masukkan input yang Valid!</div>'
            );
            $base_url = site_url();
            redirect($base_url);
        } else {
            $email = $this->input->post('email', true);
            $checking_email = $this->home_model->checking_email($email);
            if ($checking_email->num_rows() > 0) {
                $this->session->set_flashdata(
                    'msg',
                    '<div class="alert alert-info">Terima kasih telah berlangganan.</div>'
                );
                $base_url = site_url();
                redirect($base_url);
            } else {
                $this->home_model->save_subcribe($email);
                $this->session->set_flashdata(
                    'msg',
                    '<div class="alert alert-info">Terima kasih telah berlangganan.</div>'
                );
                $base_url = site_url();
                redirect($base_url);
            }
        }
    }
}
