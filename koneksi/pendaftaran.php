<?php
abstract class Pendaftaran {
    // Properti terenkapsulasi (protected) sesuai ketentuan soal
    protected $id_pendaftaran;
    protected $nama_calon;
    protected $asal_sekolah;
    protected $nilai_ujian;
    protected $biaya_pendaftaran_dasar;

    // Constructor untuk memetakan nilai dari database
    public function __construct($id, $nama, $asal, $nilai, $biaya) {
        $this->id_pendaftaran = $id;
        $this->nama_calon = $nama;
        $this->asal_sekolah = $asal;
        $this->nilai_ujian = $nilai;
        $this->biaya_pendaftaran_dasar = $biaya;
    }

    // Mendeklarasikan abstract method (wajib tanpa isi/body)
    abstract public function hitungTotalBiaya();
    abstract public function tampilkanInfoJalur();
}
?>