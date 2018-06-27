<div class="col-lg-12">
    <a href="<?php echo base_url('package/add');?>" class="btn btn-primary btn-sm">Tambah</a>
</div>
<table class="table table-hover">
    <thead>
      <tr>
        <th>#</th>
        <th>Kode Paket</th>
        <th>Nama Paket</th>
        <th>Paket Satuan</th>
        <th>Paket Harga</th>
      </tr>
    </thead>
    <tbody>
        <?php
            foreach($paket as $k => $v) {
        ?>
        <tr>
            <td><?php echo $k+1;?></td>
            <td><?php echo $v['paket_kd'];?></td>
            <td><?php echo $v['paket_nama'];?></td>
            <td><?php echo $v['paket_satuan'];?></td>
            <td><?php echo $v['paket_harga'];?></td>
        </tr>
        <?php } ?>
    </tbody>
  </table>