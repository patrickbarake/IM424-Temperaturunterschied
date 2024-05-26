<?php   


require_once('config.php');


try {


$date = [];
$bern = [];
$chur = [];
   
$pdo = new PDO($dsn, $db_user, $db_pass, $options);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$query = 'SELECT precipitation, temperature, created, location FROM Weather';
$statement = $pdo->query($query);   

while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
    $precipitation = $row['precipitation'];
    $created = $row['created'];
    $city = $row['location'];

    if ($city === 'Bern') {
        $bern[] = $row;
    } elseif ($city === 'Chur') {
        $chur[] = $row;
    }
}



$data = [
    'bern' => $bern,
    'chur' => $chur,
];

$json = json_encode( $data);

echo $json;

} catch (PDOException $e) {
    echo "Error:" . $e->getMessage();
}
?>  