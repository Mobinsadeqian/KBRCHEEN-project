<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>خبرچین | گزارش‌های شهری</title>
    <style>
        /* تزریق مستقیم و ۱۰۰٪ آفلاین فونت وزیرمتن برای شرایط بد اینترنت */
        @font-face {
            font-family: 'Vazirmatn';
            src: url('data:font/woff2;charset=utf-8;base64,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$') format('woff2');
            font-weight: 400;
            font-style: normal;
        }

        :root {
            --primary-color: #2563eb;
            --bg-color: #f8fafc;
            --card-bg: #ffffff;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border-color: #e2e8f0;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Vazirmatn', sans-serif;
        }

        body {
            background-color: var(--bg-color);
            color: var(--text-main);
            min-height: 100vh;
            padding: 20px 15px 80px 15px; /* پدینگ پایین برای اینکه دکمه چسبان روی آخرین کارت نیفتد */
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            text-align: center;
            margin-bottom: 30px;
            margin-top: 20px;
            width: 100%;
            max-width: 600px;
        }

        header h1 {
            font-size: 2rem;
            color: var(--primary-color);
            font-weight: 700;
            margin-bottom: 5px;
        }

        header h2 {
            font-size: 1.2rem;
            color: var(--text-muted);
            font-weight: 400;
        }

        .report-card {
            background: var(--card-bg);
            width: 100%;
            max-width: 600px;
            padding: 20px;
            border-radius: 12px;
            border: 1px solid var(--border-color);
            box-shadow: 0 2px 5px rgba(0,0,0,0.02);
            margin-bottom: 15px;
            text-align: right;
        }

        .card-row {
            margin-bottom: 10px;
            font-size: 0.95rem;
            line-height: 1.6;
        }

        .card-row:last-child {
            margin-bottom: 0;
        }

        .label {
            font-weight: 700;
            color: #475569;
        }

        .text-content {
            background: #f1f5f9;
            padding: 12px;
            border-radius: 8px;
            margin-top: 5px;
            color: #334155;
            white-space: pre-line;
        }

        /* دکمه بازگشت چسبان مدرن (Sticky Bottom Navbar) */
        .back-nav {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            padding: 12px;
            border-top: 1px solid var(--border-color);
            display: flex;
            justify-content: center;
            box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.03);
            z-index: 1000;
        }

        .btn-back {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            background: var(--primary-color);
            color: white;
            text-decoration: none;
            padding: 10px 24px;
            border-radius: 8px;
            font-weight: 700;
            font-size: 0.95rem;
            width: 100%;
            max-width: 400px;
            text-align: center;
            transition: background 0.2s;
        }

        .btn-back:hover {
            background: #1d4ed8;
        }
    </style>
</head>
<body>

<?php
require_once 'config.php';
$city_name = $_GET["city"];
?>

<header>
    <h1>خبرچین</h1>
    <h2>در <?php echo htmlspecialchars($city_name); ?> چه خبر؟</h2>
</header>

<?php
// پیدا کردن ID شهر بر اساس نام آن
$sql = "SELECT id FROM reports_city WHERE name = '$city_name'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$city_id = $row["id"];

// کوئری برای گرفتن تمام گزارش‌های تایید شده
$sql_report = "SELECT display_name, text, created_at, category_id 
               FROM reports_report 
               WHERE city_id = '$city_id' AND is_approved = 1 
               ORDER BY created_at DESC";
$result2 = $conn->query($sql_report);

if ($result2 && $result2->num_rows > 0) {
    // رندر کارت‌ها
    while ($row2 = $result2->fetch_assoc()) {
        $cat_id = $row2["category_id"];
        $sql_cat = "SELECT icon, title FROM reports_category WHERE id = '$cat_id'";
        $result3 = $conn->query($sql_cat);
        $row3 = $result3->fetch_assoc();
        $formatted_date = date("H:i | Y-m-d", strtotime($row2["created_at"]));
        ?>
        <div class="report-card">
            <div class="card-row">
                <span class="label">فرستنده:</span> 
                <span><?php echo htmlspecialchars($row2["display_name"]); ?></span>
            </div>
            <div class="card-row">
                <span class="label">دسته‌بندی:</span> 
                <span><?php echo htmlspecialchars($row3["icon"]) . " " . htmlspecialchars($row3["title"]); ?></span>
            </div>
            <div class="card-row">
                <span class="label">تاریخ ارسال:</span> 
                <span style="font-size: 0.85rem; color: var(--text-muted);"><?php echo htmlspecialchars($formatted_date); ?></span>
            </div>
            <div class="card-row" style="margin-top: 12px;">
                <span class="label">متن گزارش:</span>
                <div class="text-content"><?php echo htmlspecialchars($row2["text"]); ?></div>
            </div>
        </div>
        <?php
    }
} else {
    // در صورت عدم وجود گزارش، آلرت سبک داده شده و کاربر برمی‌گردد
    echo "<script>alert('هنوز گزارش تایید شده‌ای برای این شهر ثبت نشده است');</script>";
    echo "<script>window.location.href='index.php';</script>";
}

$conn->close();
?>

<div class="back-nav">
    <a href="index.php" class="btn-back">بازگشت به صفحه اصلی 🏠</a>
</div>

</body>
</html>