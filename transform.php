<?php

include 'extract.php';


$locations = [
    '46.84,9.52' => 'Chur',
    '46.94,7.44' => 'Bern'
];

function weatherCondition($temperature, $precipitation, $cloud_cover) {
    if ($cloud_cover <= 80 && $precipitation == 0) {
        return 'sunny';
    } elseif ($cloud_cover > 80 && $precipitation < 5) {
        return 'cloudy';
    } elseif ($precipitation >= 5) {
        return 'rainy';
    } else {
        return 'unknown';
    }
}



foreach ($weatherData as $index => $item) {
    $weatherData[$index]['temperature_2m'] = round($item['temperature_2m']);

    $weatherData[$index]['temperature_2m'] = round($item['temperature_2m'] * 2) / 2;

    $coordinates = $item['latitude'] . ',' . $item['longitude'];
    
  

    $weatherData[$index]['location'] = $locations[$coordinates];

    unset($weatherData[$index]['latitude']);

    unset($weatherData[$index]['longitude']);
    
    $weatherData[$index]['condition'] = weatherCondition($item['temperature_2m'], $item['precipitation'], $item['cloud_cover']);
}
