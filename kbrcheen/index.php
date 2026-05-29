<?php
require_once 'config.php';
?>
<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>خبر‌چین | پلتفرم گزارش‌های شهری</title>
    
    <style>
        @font-face {
            font-family: 'Vazirmatn';
            src: url('data:font/woff2;charset=utf-8;base64,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') format('woff2');
            font-weight: 400;
            font-style: normal;
        }

        :root {
            --primary-color: #2563eb;
            --primary-hover: #1d4ed8;
            --secondary-color: #10b981;
            --bg-color: #f8fafc;
            --card-bg: #ffffff;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border-color: #cbd5e1;
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
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 15px;
        }

        .main-container {
            background: var(--card-bg);
            max-width: 420px;
            width: 100%;
            padding: 30px 20px;
            border-radius: 16px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
            text-align: center;
            border: 1px solid #e2e8f0;
        }

        .logo-area h1 {
            font-size: 2.2rem;
            font-weight: 700;
            color: var(--primary-color);
            margin-bottom: 6px;
        }

        .logo-area p {
            color: var(--text-muted);
            font-size: 0.9rem;
            margin-bottom: 25px;
        }

        .form-group {
            text-align: right;
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: 700;
            margin-bottom: 6px;
            font-size: 0.85rem;
            color: #475569;
        }

        select {
            width: 100%;
            padding: 12px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            background-color: #ffffff;
            font-size: 0.95rem;
            color: var(--text-main);
            outline: none;
            cursor: pointer;
            appearance: select; 
            -webkit-appearance: select;
        }

        select:focus {
            border-color: var(--primary-color);
        }

        select:disabled {
            background-color: #f1f5f9;
            color: #94a3b8;
            cursor: not-allowed;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            font-weight: 700;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            text-decoration: none;
            transition: background 0.2s ease;
        }

        .btn-primary {
            background: var(--primary-color);
            color: #ffffff;
        }

        .btn-primary:hover {
            background: var(--primary-hover);
        }

        .divider {
            margin: 20px 0;
            display: flex;
            align-items: center;
            color: #e2e8f0;
        }

        .divider::before, .divider::after {
            content: "";
            flex: 1;
            height: 1px;
            background: #e2e8f0;
        }
        
        .divider span {
            padding: 0 10px;
            color: #94a3b8;
            font-size: 0.8rem;
        }

        .btn-secondary {
            background: #ffffff;
            color: var(--secondary-color);
            border: 1px solid var(--secondary-color);
        }

        .btn-secondary:hover {
            background: var(--secondary-color);
            color: #ffffff;
        }

        /* استایل یادداشت ادمین اضافه شده */
        .info-note {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            background: #f8fafc;
            border: 1px dashed #cbd5e1;
            padding: 10px;
            border-radius: 8px;
            color: #64748b;
            font-size: 0.85rem;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="main-container">
        <div class="logo-area">
            <h1>خبر‌چین</h1>
            <p>گزارش‌های مردمی و وقایع محلی</p>
        </div>
        
        <form method="get" action="reports_city.php">
            <div class="form-group">
                <label for="state-select">استان خود را انتخاب کنید</label>
                <select id="state-select" name="state">
                    <option value="">-- انتخاب استان --</option>
                    <?php
                    $sql = "SELECT name FROM reports_state";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()) {
                        echo "<option value='".htmlspecialchars($row['name'])."'>".htmlspecialchars($row['name'])."</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="form-group">
                <label for="city-select">شهر خود را انتخاب کنید</label>
                <select id="city-select" name="city" disabled>
                    <option value="">-- اول استان را انتخاب کنید --</option>
                </select>
            </div>
            
            <button type="submit" class="btn btn-primary">مشاهده اخبار و گزارش‌ها</button>
        </form>
        <br><br>
        <a href="all_reports.php"><button class="btn btn-primary">مشاهده همه گزارش‌های ثبت شده</button></a>
        <div class="divider"><span>یا</span></div>
        
        <a href="add_report.php" class="btn btn-secondary">گزارش خبر جدید ✍️</a>

        <div class="info-note">
            <span>⏳</span>
            <span>گزارش‌ها پس از تایید توسط ادمین منتشر می‌شوند.</span>
        </div>
    </div>

    <script>
    document.getElementById('state-select').addEventListener('change', function() {
        var stateName = this.value;
        var citySelect = document.getElementById('city-select');
        
        if (!stateName) {
            citySelect.innerHTML = '<option value="">-- اول استان را انتخاب کنید --</option>';
            citySelect.disabled = true;
            return;
        }

        var xhr = new XMLHttpRequest();
        xhr.open('GET', 'get_cities.php?state_name=' + encodeURIComponent(stateName), true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                var cities = JSON.parse(xhr.responseText);
                
                citySelect.innerHTML = '<option value="">-- انتخاب شهر --</option>';
                citySelect.disabled = false;
                
                cities.forEach(function(cityName) {
                    var option = document.createElement('option');
                    option.value = cityName;
                    option.textContent = cityName;
                    citySelect.appendChild(option);
                });
            }
        };
        xhr.send();
    });
    </script>
</body>
</html>