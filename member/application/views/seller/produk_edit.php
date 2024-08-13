<div class="container">
	<h5>Edit Produk</h5>

	<form method="post" enctype="multipart/form-data">
		<div class="mb-3">
			<label>Kategori</label>
			<select class="form-control form-select" name="id_kategori">
				<option value="">Pilih</option>
				<?php foreach ($kategori as $key => $value): ?>

				<option value="<?php echo $value['id_kategori'] ?>" <?php echo $value['id_kategori']==$produk['id_kategori'] ?"selected" : ""?> >
					<?php echo $value['nama_kategori'] ?>
				</option>
				<?php endforeach ?>
			</select>
		</div>
		<div class="mb-3">
			<label>Nama</label>
			<input type="text" name="nama_produk" value="<?php echo $produk['nama_produk'] ?>" class="form-control">
		</div>
		<div class="mb-3">
			<label>Harga</label>
			<input type="number" name="harga_produk" value="<?php echo $produk['harga_produk'] ?>" class="form-control">
		</div>
		<div class="mb-3">
			<label>Berat</label>
			<input type="number" name="berat_produk" value="<?php echo $produk['berat_produk'] ?>" class="form-control">
			<span class="text-muted small">Gram</span>
		</div>
		<div class="mb-3">
			<label>Foto</label>
			<input type="file" name="foto_produk" class="form-control">
		</div>
		<div class="mb-3">
			<label>Foto Lama</label> <br>
			<img src="<?php echo $this->config->item("url_produk").$produk['foto_produk'] ?>" width="200">
		</div>
		<div class="mb-3">
			<label>Deskripsi</label>
			<textarea class="form-control" name="deskripsi_produk"><?php echo $produk['deskripsi_produk'] ?></textarea>
		</div>
		<button class="btn btn-primary">Simpan</button>
	</form>
</div>