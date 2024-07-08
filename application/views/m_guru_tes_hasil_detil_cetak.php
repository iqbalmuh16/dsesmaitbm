<!DOCTYPE html>
<html>

<head>
  <title>Laporan Hasil Ujian</title>
  <link href='<?php echo base_url(); ?>___/css/style_print.css' rel='stylesheet' media='' type='text/css' />
</head>

<body>

 <table>
  <tr align="center">
  <td width="117"><BR><img src="../../___/img/lampung.png" width="117" height="110"></td>
  <td width="469"><h2><b>PEMERINTAH PROVINSI LAMPUNG<br>DINAS PENDIDIKAN DAN KEBUDAYAAN<br>HASIL UJIAN SEKOLAH<br>SMAIT BAITUL MUSLIM</b></h2></td>
  <td width="109"><img src="../../___/img/smait.png" width="109"></td>
   </tr>
  <tr align="center">
    <td colspan="3">Jl. P. Morotai No. 33 Jagabaya III, Bandar Lampung, Indonesia Telp.    (0721705529)<br>
      surel : <i>www.smkn1bdl.sch.id</i> e-mail : <i>smkn1bl@gmail.com </i> </td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<hr style="border: solid 1px #000"><br>

  <h4>Detail Ujian</h4>
  <table class="table-bordered" style="margin-bottom: 0px">
    <tr>
      <td width="30%">Mata Pelajaran</td>
      <td><b><?php echo $detil_tes->namaMapel; ?></b></td>
    </tr>
    <tr>
      <td>Nama Guru</td>
      <td width="70%"><b><?php echo $detil_tes->nama_guru; ?></b></td>
    </tr>
    <tr>
      <td>Nama Ujian</td>
      <td width="70%"><b>[<?php echo $detil_tes->kelas; ?>] - [<?php echo $detil_tes->jurusan; ?>] - <?php echo $detil_tes->nama_ujian; ?></b></td>
    </tr>
    <tr>
      <td>Jumlah Soal</td>
      <td><b><?php echo $detil_tes->jumlah_soal; ?></b></td>
      </td>
    </tr>
    <tr>
      <td>Waktu</td>
      <td><b><?php echo $detil_tes->waktu; ?> menit</b></td>
    </tr>
    <tr>
      <td>Tertinggi</td>
      <td><b><?php echo $statistik->max_; ?></b></td>
    </tr>
    <tr>
      <td>Terendah</td>
      <td><b><?php echo $statistik->min_; ?></b></td>
    </tr>
    <tr>
      <td>Rata-rata</td>
      <td><b><?php echo number_format($statistik->avg_); ?></b></td>
    </tr>
  </table>
  <br><br>
  <h4>Hasil Ujian</h4>
  <table class="table-bordered">
    <thead>
      <tr>
        <th width="5%">No</th>
        <th width="50%">Nama Peserta</th>
        <th width="15%">Jumlah Benar</th>
        <th width="10%">Nilai</th>
        <th width="10%">Kelas</th>
        <th width="10%">Jurusan</th>
      </tr>
    </thead>

    <tbody>
      <?php
      if (!empty($hasil)) {
        $no = 1;
        foreach ($hasil as $d) {
          echo '<tr>
                <td class="ctr">' . $no . '</td>
                <td>' . $d->nama . '</td>
                <td class="ctr">' . $d->jml_benar . '</td>
                <td class="ctr">' . $d->nilai . '</td>
                <td class="ctr">' . $d->jurusan . '</td>
				<td class="ctr">' . $d->id_jurusan . '</td>
                </tr>
                ';
          $no++;
        }
      } else {
        echo '<tr><td colspan="5">Belum ada data</td></tr>';
      }
      ?>
    </tbody>
  </table>
  <script>
window.print();
</script>

</body>

</html>