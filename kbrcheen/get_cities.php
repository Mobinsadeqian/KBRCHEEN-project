<?php
// get_cities.php
require_once 'config.php';

header('Content-Type: application/json; charset=utf-8');

if (isset($_GET['state_name'])) {
    $state_name = $_GET['state_name'];
    $stmt = $pdo->prepare("SELECT c.name 
                           FROM reports_city c
                           JOIN reports_state s ON c.state_id = s.id
                           WHERE s.name = ?");
    $stmt->execute([$state_name]);
    $cities = [];
    while ($row = $stmt->fetch()) {
        $cities[] = $row['name'];
    }
    
    echo json_encode($cities, JSON_UNESCAPED_UNICODE);
}