<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Kullanıcı Listesi</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Kayıtlı Kullanıcılar</h2>
        <div class="user-list">
            <?php
            function calculateAge($birthDate) {
                $birthDate = new DateTime($birthDate);
                $today = new DateTime('today');
                $age = $today->diff($birthDate)->y;
                return $age;
            }

            try {
                $pdo = new PDO('mysql:host=localhost;dbname=kullanici_veritabani', 'root', '');
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                $stmt = $pdo->query("SELECT firstName, lastName, email, birthDate FROM kullanicilar");

                while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    echo '<div class="user">';
                    echo "İsim: " . htmlspecialchars($row['firstName']) . "<br>";
                    echo "Soyisim: " . htmlspecialchars($row['lastName']) . "<br>";
                    echo "E-posta: " . htmlspecialchars($row['email']) . "<br>";
                    echo "Yaş: " . calculateAge($row['birthDate']) . "<br>";
                    echo '</div>';
                }
            } catch (PDOException $e) {
                echo "Veritabanı bağlantı hatası: " . $e->getMessage();
            }
            ?>
        </div>
    </div>
</body>
</html>
