<?php
class Logout extends CI_Controller {
	function index() {
		//unset data login
		$this->session->unset_userdata("id_member");
		$this->session->unset_userdata("email_member");
		$this->session->unset_userdata("nama_member");
		$this->session->unset_userdata("alamat_member");
		$this->session->unset_userdata("wa_member");
		$this->session->unset_userdata("kode_distrik_member");
		$this->session->unset_userdata("nama_distrik_member");

		//redirect ke halaman login
		$this->session->set_flashdata('pesan_sukses', 'Anda telah logout');
		redirect('/','refresh');
	}
}