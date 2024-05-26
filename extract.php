<?php

$url = "https://api.open-meteo.com/v1/forecast?latitude=46.8499,46.9481&longitude=9.5329,7.4474&current=temperature_2m,precipitation,cloud_cover&timezone=Europe%2FBerlin&forecast_days=1";

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$output = curl_exec($ch);

$data = json_decode($output, true);

$weatherData = [];
foreach ($data as $item) {
    $latitude = $item['latitude'];
    $longitude = $item['longitude'];
    $temperature_2m = $item['current']['temperature_2m'];
    $precipitation = $item['current']['precipitation'];
    $cloud_cover = $item['current']['cloud_cover'];
    $time = $item['current']['time'];
    $weatherData[] = [
        'latitude' => $latitude,
        'longitude' => $longitude,
        'temperature_2m' => $temperature_2m,
        'precipitation' => $precipitation,
        'cloud_cover' => $cloud_cover,
        'created' => $time,
    ];
}
