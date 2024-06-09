<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=kullanici_veritabani', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Veritabanı bağlantı hatası: " . $e->getMessage();
    die();
}
?>
