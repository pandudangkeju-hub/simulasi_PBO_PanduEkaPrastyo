<?php
require_once 'Pendaftaran.php';

class PendaftaranPrestasi extends Pendaftaran {
    // Properti tambahan spesifik Prestasi
    private $jenis_prestasi;
    private $tingkat_prestasi;

    public function __construct($id, $nama, $asal, $nilai, $biaya, $jenis, $tingkat) {
        parent::__construct($id, $nama, $asal, $nilai, $biaya);
        $this->jenis_prestasi = $jenis;
        $this->tingkat_prestasi = $tingkat;
    }

    // Metode Query Spesifik Jalur Prestasi
    public static function getDaftarPrestasi($db) {
        $query = "SELECT * FROM tabel_pendaftaran WHERE jalur_pendaftaran = 'Prestasi'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Implementasi metode abstrak dengan potongan Rp50.000 (Tahap 5)
    public function hitungTotalBiaya() {
        return $this->biaya_pendaftaran_dasar - 50000;
    }

    public function tampilkanInfoJalur() {
        return "Prestasi: " . $this->jenis_prestasi . " (" . $this->tingkat_prestasi . ")";
    }
}
?>