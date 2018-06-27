<div class="col-lg-12">
    <a href="<?php echo base_url('user/add');?>" class="btn btn-primary btn-sm">Tambah</a>
</div>
<table class="table table-hover">
    <thead>
      <tr>
        <th>#</th>
        <th>Kode</th>
        <th>Nama</th>
        <th>Telepon</th>
        <th>Tgl Masuk</th>
        <th>Hak Akses</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <?php
            foreach($pengguna as $k => $v) {
        ?>
        <tr>
            <td><?php echo $k+1;?></td>
            <td><?php echo $v['peng_kd'];?></td>
            <td><?php echo $v['peng_nama'];?></td>
            <td><?php echo $v['peng_telp'];?></td>
            <td><?php echo $v['peng_tglmasuk'];?></td>
            <td><?php echo $v['peng_hakakses'];?></td>
        </tr>
        <?php } ?>
    </tbody>
  </table>