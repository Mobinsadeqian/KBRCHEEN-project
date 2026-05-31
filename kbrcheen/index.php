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
            src: url('data:font/woff2;charset=utf-8;base64,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\n') format('woff2');
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
            flex-direction: column; /* تغییر داده شده برای چیدمان عمودی صفحه و فوتر */
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
            margin-bottom: 20px; /* فاصله از فوتر زیرین */
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

        /* استایل‌های بخش فوتر جدید */
        .main-footer {
            text-align: center;
            font-size: 0.85rem;
            color: var(--text-muted);
            margin-top: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 8px;
        }

        .main-footer a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            gap: 4px;
            transition: color 0.2s;
        }

        .main-footer a:hover {
            color: var(--primary-hover);
            text-decoration: underline;
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
                    $stmt = $pdo->query($sql);
                    while($row = $stmt->fetch()) {
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

    <footer class="main-footer">
        <div>ساخته شده با ❤️ توسط مبین</div>
        <div>
            <a href="https://github.com/Mobinsadeqian/KBRCHEEN-project" target="_blank" rel="noopener noreferrer">
                <svg height="16" width="16" viewBox="0 0 16 16" style="fill: currentColor; vertical-align: middle;">
                    <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
                </svg>
                لینک گیت‌هاب پروژه
            </a>
        </div>
    </footer>

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
