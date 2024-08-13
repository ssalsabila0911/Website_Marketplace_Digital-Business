<?php
class Home extends CI_Controller {

	function __construct() {
		parent::__construct();

		//perintah untuk login
		if(!$this->session->userdata("id_member")) {
			redirect('/', 'refresh');
		}
	}
	
	function index(){



		$this->load->view('header');
		$this->load->view('home');
		$this->load->view('footer');
	}
}