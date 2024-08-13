<?php 
class Artikel extends CI_Controller{

	function __construct() {
		parent::__construct();

		//perintah untuk login
		if(!$this->session->userdata("id_admin")) {
			redirect('/', 'refresh');
		}
	}

	function index() {

		//model Martikel
		$this->load->model("Martikel");

		$data["artikel"] = $this->Martikel->tampil();



		$this->load->view("header");
		$this->load->view("artikel_tampil", $data);
		$this->load->view("footer");
	}

	function tambah(){

		//mendapatkan inputan dari formulir pakai $this->input-post()

		$inputan = $this->input->post();


		//form validation judul_artikel wajib diisi
		$this->form_validation->set_rules("judul_artikel", "Judul artikel", "required");

		//atur pesan dalam bahasa indonesia
		$this->form_validation->set_message("required", "%s wajib diisi");

		//jika ada inputan
		if ($this->form_validation->run()==TRUE) {
			//panggil model Martikel
			$this->load->model('Martikel');
			//jalankan fungsi simpan()
			$this->Martikel->simpan($inputan);

			//pesan dilayar
			$this->session->set_flashdata('pesan_sukses', 'Data artikel tersimpan');

			//redirect ke fitur artikel untuk tampil artikel
			redirect('artikel', 'refresh');
		}
		$this->load->view("header");
		$this->load->view("artikel_tambah");
		$this->load->view("footer");
	}

	function hapus($id_artikel) {

		//panggil model Martikel
		$this->load->model('Martikel');

		//jalankan fungsi hapus()
		$this->Martikel->hapus($id_artikel);

		// pesan di layar
		$this->session->set_flashdata('pesan_sukses', 'artikel telah dihapus');

		//redirect ke artikel untuk tampil data
		redirect('artikel', 'refresh');
	}

	function edit($id_artikel){
		// 1. tampilkan artikel terlebih dahulu
		$this->load->model("Martikel");
		$data['artikel'] = $this->Martikel->detail($id_artikel);


		// 2. ubah data
		$inputan = $this->input->post();

		//form validation judul_artikel wajib diisi
		$this->form_validation->set_rules("judul_artikel", "Judul artikel", "required");

		//atur pesan dalam bahasa indonesia
		$this->form_validation->set_message("required", "%s wajib diisi");


		//jika ada inputan
		if ($this->form_validation->run()==TRUE) {
			//jalankan fungsi edit()
			$this->Martikel->edit($inputan, $id_artikel);

			//pesan
			$this->session->set_flashdata('pesan_sukses', 'artikel telah diubah');

			//redirect
			redirect('artikel', 'refresh');
		}



		$this->load->view("header");
		$this->load->view("artikel_edit", $data);
		$this->load->view("footer");
	}
}