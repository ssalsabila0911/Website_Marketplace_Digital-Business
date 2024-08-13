
<div class="container">
    	<h5>Data slider</h5>
    	<table class="table table-bordered" id="mytable">
    		<thead>
    			<tr>
    				<th>No</th>
    				<th>Caption</th>
                    <th>Foto</th>
    				<th>Opsi</th>
    			</tr>
    		</thead>
    		<tbody>

                <?php foreach ($slider as $k => $v): ?>


    			<tr>
    				<td><?php echo $k+1; ?></td>
    				<td><?php echo $v['caption_slider']; ?></td>
    				<td>
                    <img src="<?php echo $this->config->item("url_slider").$v["foto_slider"]?>" width="200">            
                    </td>
                    <td>
                        <a href="<?php echo base_url("slider/edit/".$v["id_slider"]) ?>" class="btn btn-warning">Edit</a>
                        <a href="<?php echo base_url("slider/hapus/".$v["id_slider"]) ?>" class="btn btn-danger">Hapus</a>
                    </td>
    			</tr>

            <?php endforeach ?>
    		</tbody>
    	</table>
    	<a href="<?php echo base_url("slider/tambah") ?>" class="btn btn-primary">Tambah Data</a>
    </div>