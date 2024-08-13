<?php
class Mslider extends CI_Model {
	function tampil (){

		$q = $this->db->get("slider");



		$d = $q->result_array();

		return $d;
	}

	function simpan($inputan) {
		//upload foto_slider
		$config['upload_path'] = $this->config->item("assets_slider");
		$config['allowed_types'] = 'gif|jpg|png|jpeg';

		$this->load->library('upload', $config);

		//upload foto slider
		$ngupload = $this->upload->do_upload("foto_slider");

		//dapatkan nama foto untuk ditampung ke db
		if ($ngupload) {
			$inputan['foto_slider'] = $this->upload->data("file_name");
		}
		//simpan data ke tabel slider
		$this->db->insert('slider', $inputan);
	}

	function hapus($id_slider){
		//delete from slider where id_slider = x
		$this->db->where('id_slider', $id_slider);
		$this->db->delete('slider');
	}

	function detail($id_slider){
		//select * from slider where id_slider = x
		$this->db->where('id_slider', $id_slider);
		$q = $this->db->get('slider');
		$d = $q->row_array();

		return $d;
	}

	function edit($inputan, $id_slider) {
		//foto_slider jika admin upload foto

		$config['upload_path'] = $this->config->item("assets_slider");
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$this->load->library("upload", $config);

		//proses upload
		$ngupload = $this->upload->do_upload("foto_slider");

		//jika upload
		if ($ngupload) {
			$inputan['foto_slider'] = $this->upload->data("file_name");
		}

		//query update data sesuai id_slider
		$this->db->where('id_slider', $id_slider);
		$this->db->update('slider', $inputan);
	}
}