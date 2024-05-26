<?php


include 'transform.php';


require_once 'config.php';


try {

    $pdo = new PDO($dsn, $db_user, $db_pass, $options);

    $sql = "INSERT INTO Weather (location, temperature, precipitation, cloud_cover, weather_condition, created) VALUES (?, ?, ?, ?, ?, ?)";
 
    $stmt = $pdo->prepare($sql);
    foreach ($weatherData as $item) {
        if($data === $item['precipitation']){
            return;
        }else{
            $stmt->execute([
                $item['location'],
                $item['temperature_2m'],
                $item['precipitation'],
                $item['cloud_cover'],
                $item['condition'],
                $item['created'],
            ]);
        }
    }
    echo "success";
} catch (PDOException $e) {
    die("Verbindung zur Datenbank konnte nicht hergestellt werden: " . $e->getMessage());
}

?>