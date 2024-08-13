<?php 
class Slider extends CI_Controller{

	function __construct() {
		parent::__construct();

		//perintah untuk login
		if(!$this->session->userdata("id_admin")) {
			redirect('/', 'refresh');
		}
	}

	function index() {

		//model Mslider
		$this->load->model("Mslider");

		$data["slider"] = $this->Mslider->tampil();



		$this->load->view("header");
		$this->load->view("slider_tampil", $data);
		$this->load->view("footer");
	}

	function tambah(){

		//mendapatkan inputan dari formulir pakai $this->input-post()

		$inputan = $this->input->post();


		//form validation caption slider wajib diisi
		$this->form_validation->set_rules("caption_slider", "caption slider", "required");

		//atur pesan dalam bahasa indonesia
		$this->form_validation->set_message("required", "%s wajib diisi");

		//jika ada inputan
		if ($this->form_validation->run()==TRUE) {
			//panggil model Mslider
			$this->load->model('Mslider');
			//jalankan fungsi simpan()
			$this->Mslider->simpan($inputan);

			//pesan dilayar
			$this->session->set_flashdata('pesan_sukses', 'Data slider tersimpan');

			//redirect ke fitur slider untuk tampil slider
			redirect('slider', 'refresh');
		}
		$this->load->view("header");
		$this->load->view("slider_tambah");
		$this->load->view("footer");
	}

	function hapus($id_slider) {

		//panggil model Mslider
		$this->load->model('Mslider');

		//jalankan fungsi hapus()
		$this->Mslider->hapus($id_slider);

		// pesan di layar
		$this->session->set_flashdata('pesan_sukses', 'slider telah dihapus');

		//redirect ke slider untuk tampil data
		redirect('slider', 'refresh');
	}

	function edit($id_slider){
		// 1. tampilkan slider terlebih dahulu
		$this->load->model("Mslider");
		$data['slider'] = $this->Mslider->detail($id_slider);


		// 2. ubah data
		$inputan = $this->input->post();

		//form validation caption slider wajib diisi
		$this->form_validation->set_rules("caption_slider", "caption slider", "required");

		//atur pesan dalam bahasa indonesia
		$this->form_validation->set_message("required", "%s wajib diisi");


		//jika ada inputan
		if ($this->form_validation->run()==TRUE) {
			//jalankan fungsi edit()
			$this->Mslider->edit($inputan, $id_slider);

			//pesan
			$this->session->set_flashdata('pesan_sukses', 'slider telah diubah');

			//redirect
			redirect('slider', 'refresh');
		}



		$this->load->view("header");
		$this->load->view("slider_edit", $data);
		$this->load->view("footer");
	}
}