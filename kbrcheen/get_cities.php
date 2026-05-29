<?php
// get_cities.php
require_once 'config.php';

header('Content-Type: application/json; charset=utf-8');

if (isset($_GET['state_name'])) {
    // ایمن‌سازی رشته متنی ورودی برای جلوگیری از SQL Injection
    $state_name = $conn->real_escape_string($_GET['state_name']);
    
    // گرفتن نام شهرها با متصل کردن جدول شهر به استان بر اساس نام استان ورودی
    $sql = "SELECT c.name 
            FROM reports_city c
            JOIN reports_state s ON c.state_id = s.id
            WHERE s.name = '$state_name'";
            
    $result = $conn->query($sql);
    
    $cities = [];
    if ($result) {
        while ($row = $result->fetch_assoc()) {
            // فقط نام شهر را به آرایه اضافه می‌کنیم
            $cities[] = $row['name'];
        }
    }
    
    echo json_encode($cities, JSON_UNESCAPED_UNICODE);
}