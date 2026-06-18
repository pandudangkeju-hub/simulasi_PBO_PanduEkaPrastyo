<?php
require_once 'Pendaftaran.php';

class PendaftaranKedinasan extends Pendaftaran {
    // Properti tambahan spesifik Kedinasan
    private $sk_ikatan_dinas;
    private $instansi_sponsor;

    public function __construct($id, $nama, $asal, $nilai, $biaya, $sk, $sponsor) {
        parent::__construct($id, $nama, $asal, $nilai, $biaya);
        $this->sk_ikatan_dinas = $sk;
        $this->instansi_sponsor = $sponsor;
    }

    // Metode Query Spesifik Jalur Kedinasan
    public static function getDaftarKedinasan($db) {
        $query = "SELECT * FROM tabel_pendaftaran WHERE jalur_pendaftaran = 'Kedinasan'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Implementasi metode abstrak dengan biaya tambahan administrasi 25% (Tahap 5)
    public function hitungTotalBiaya() {
        return $this->biaya_pendaftaran_dasar * 1.25;
    }

    public function tampilkanInfoJalur() {
        return "Sponsor: " . $this->instansi_sponsor . " [No SK: " . $this->sk_ikatan_dinas . "]";
    }
}
?>