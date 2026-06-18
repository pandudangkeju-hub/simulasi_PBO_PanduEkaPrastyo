<?php
require_once 'Pendaftaran.php';

class PendaftaranReguler extends Pendaftaran {
    // Properti tambahan spesifik Reguler
    private $pilihan_prodi;
    private $lokasi_kampus;

    public function __construct($id, $nama, $asal, $nilai, $biaya, $prodi, $kampus) {
        // Memanggil constructor dari class induk (Pendaftaran)
        parent::__construct($id, $nama, $asal, $nilai, $biaya);
        $this->pilihan_prodi = $prodi;
        $this->lokasi_kampus = $kampus;
    }

    // Metode Query Spesifik Jalur Reguler
    public static function getDaftarReguler($db) {
        $query = "SELECT * FROM tabel_pendaftaran WHERE jalur_pendaftaran = 'Reguler'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Implementasi metode abstrak dari induk (Tahap 5 sekalian diisi)
    public function hitungTotalBiaya() {
        return $this->biaya_pendaftaran_dasar; // Tarif standar tanpa tambahan
    }

    public function tampilkanInfoJalur() {
        return "Prodi: " . $this->pilihan_prodi . " (" . $this->lokasi_kampus . ")";
    }
}
?>