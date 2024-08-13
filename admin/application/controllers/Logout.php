<?php
class Logout extends CI_Controller {
	function index() {
		//unset data login
		$this->session->unset_userdata("id_admin");
		$this->session->unset_userdata("username");
		$this->session->unset_userdata("nama");

		//redirect ke halaman login
		$this->session->set_flashdata('pesan_sukses', 'Anda telah logout');
		redirect('/','refresh');
	}
}