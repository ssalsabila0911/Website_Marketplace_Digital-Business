<?php
class Martikel extends CI_Model {
	function tampil (){

		$q = $this->db->get("artikel");



		$d = $q->result_array();

		return $d;
	}

	function simpan($inputan) {
		//upload foto_artikel
		$config['upload_path'] = $this->config->item("assets_artikel");
		$config['allowed_types'] = 'gif|jpg|png|jpeg';

		$this->load->library('upload', $config);

		//upload foto artikel
		$ngupload = $this->upload->do_upload("foto_artikel");

		//dapatkan nama foto untuk ditampung ke db
		if ($ngupload) {
			$inputan['foto_artikel'] = $this->upload->data("file_name");
		}
		//simpan data ke tabel artikel
		$this->db->insert('artikel', $inputan);
	}

	function hapus($id_artikel){
		//delete from artikel where id_artikel = x
		$this->db->where('id_artikel', $id_artikel);
		$this->db->delete('artikel');
	}

	function detail($id_artikel){
		//select * from artikel where id_artikel = x
		$this->db->where('id_artikel', $id_artikel);
		$q = $this->db->get('artikel');
		$d = $q->row_array();

		return $d;
	}

	function edit($inputan, $id_artikel) {
		//foto_artikel jika admin upload foto

		$config['upload_path'] = $this->config->item("assets_artikel");
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$this->load->library("upload", $config);

		//proses upload
		$ngupload = $this->upload->do_upload("foto_artikel");

		//jika upload
		if ($ngupload) {
			$inputan['foto_artikel'] = $this->upload->data("file_name");
		}

		//query update data sesuai id_artikel
		$this->db->where('id_artikel', $id_artikel);
		$this->db->update('artikel', $inputan);
	}
}