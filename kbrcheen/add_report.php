<?php
// انتقال کانفیگ به بالاترین خط برای حل مشکل عدم شناسایی متغیر دیتابیس در کدهای پایین
require_once 'config.php';

?>
<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>خبرچین | ثبت گزارش جدید شهری</title>
    
    <style>
        
        @font-face {
            font-family: 'Vazirmatn';
            src: url('data:font/woff2;charset=utf-8;base64,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 رازق_name=') + encodeURIComponent(stateName), true;
            font-weight: 400;
            font-style: normal;
        }
        @font-face {
            font-family: 'Vazirmatn';
            src: url('data:font/woff2;charset=utf-8;base64,d09GMgABAAAAAAw0AA4AAAAAFgAACvcAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAADG4YIBwCHDYGYACDIBEMCvAIu0gLgRoAEgg7SREUBmgbFscGZCO3bcoN9gYgO0bEw63gO6879v8nAiNoG2wDbaL/v+7Mvfe+p5IUkklbyYV7S25Ror9E9O68/0A0i66R0fD/Nidj6w/0iW03iXmYmG+98f/ZtL376L0n7iYyU0hNoqY8vL612W3E42mFw+OxeB7f4wVw0H87g89gYjGv2O0YAAAgB6/vOAn/xGfB87w+HjO8Bv6Gf2D3Y7Hw+f/f7X3O/Zskw6RJS5o6gGv8X6RJKunN8/pA/C6v9wGvYwQYfQAnb26Yl5gPAsg1Psh1mG8g6D3mK5hXgYgAAYQhYtZgNoCIQGIGgAgZAAg5ZgZgGAsAhDoAhC0AELHGAgA8wNf/B9gYAF8An8DmwGeYp6m7C9Y9OAg+f5nfe/fO/fXWqY6A+qE2wPqpO3pC6A+oD6K/EPUH0H9b/TfA/G/338v9V+pPff9Z8H8Q/Suh/vOAn+X+E6V/TfRPlP6m0D9G+uNC/2joDwv9EaFvgugP9/pDoX/U6/cM+U8C9O9P/R7vV6pfoX5Bfe/uXuZfAP1/6wH0U/+X9ID6L/Fz6E+6P5G6Z0b9AeoPpO5Z0D/Ufyb6P6H/mNfPr98fUf8LgP4V6P99/m8K+m+of4P6F6B/DvrnoP9v6J+C/pnrZ9bPv9/Pr5+fv5+fL5P8pOfLpX5m6WeSfiTpR9pA0sP6kbaT9CAdI91Kuk6SknQtSZKkySTpUpIkSfI1yT8kX0vyn5J8Kcl/fLgqXN0qSStJ00RSuXAVwip0KqdXhXBF6FQiXG70+oOqX9D7BeFf0f1P6U8Uf8XwZ0L/+gK/Gf3fGvpv9O8t8Nu8/nb0dyf6qf7pDvy2R0/v+b8R+w9pD0MfoA+mD0gfiD7I6IOM+mC6PkiwPki0Pki8vni6fsh8fXBy/fD09cFsfXBu/fBsffB8fXAt9C/p6vSAdIBe6E7S9dCdpAtfV1mKrhFdRteQLqMbe6FfFPrLwE8MfGLwU90f5b9UuD/Z/Uv797O5//Xw/9v6/6F/XepfA33118W+78R+e/T1Xg/f6Kdf5vWp7z99/m90/6H+G9X/Uv/p9N+E+m9g/wvQf6Z/P/Ofe/0u9Zfof0P9RfrfUn+B/sNAnwS8BDo9gM6eXug29C7X06XQrdCl0LnQWfQu09O50LnQWfQuG7qU0UWh6A/9Bf390IdS/16onwL+Tf9V6P+M/u/S/wbovwP6R6FfAv1noP9C6OfWfwn6OfXPQP8E9DPpZ5R+OulHkn4g6S0d+C3W0nZitZ1YbSe2tRPrshPrMtbSthOrbSdW24nVdmK1ndjWTmzrL7bL/W/C+e1Wp7N/u9/Zvx/7uO+I98jPsc+hX0K/hn6Hfi/9Wfp76d6Z96Z7V96b7d15T3reV/K8Rfe66A7v9wP6g/VHzY98MvxAOD89MD09Mz0zPTM9Oz07Pzc9Pz+e/pU++vXoX/3pS+vS6tK6VNSlUfV0VXSlyqqGqq4g/Ksh+9uB9gXWv8B2YF0M/MLAZ6E/K/Szw8/FfjF6wGvAe8B7wXvBe8B7wXvRefT70S/U3vF79IeeS/tE6vFahGrhVy4vVq43fTi67UvXq8mX6+0Xp82vU6tZivv/6N/A/T/vX8D7N/N+7eBfSrvn7v/XPP7F9K/kP6g9IuD/qXoH6V+KfSDoN+/fD79G0r/F+oPpX4m6UeSfsT0e5K6R6I/kPQDSc9IbyLpNZJ6f0v+VfKvkp6W9CSf8qX6XNLT6jNJT0f3069H/+7pX0v/N6Df0f0p/beCfoO+Y/pPpv8w0D9P/3H8+Xf76Neff58G1wP9Wf6e6V/m6E9X6R8X/Z+g/4P676G/Z6I/A/3v6L8l/UvqP8zVj7360asfffpHof8M9N/K0Keq0Keifw30q9C/0F9P99Pluized_name=') + encodeURIComponent(stateName), true;
            font-weight: 700;
            font-style: normal;
        }

        :root {
            --primary-color: #2563eb;
            --primary-hover: #1d4ed8;
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
            max-width: 550px; /* افزایش عرض برای راحتی نوشتن گزارش */
            width: 100%;
            padding: 30px 25px;
            border-radius: 16px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
        }

        .header-area {
            text-align: center;
            margin-bottom: 25px;
        }

        .header-area h1 {
            font-size: 2rem;
            font-weight: 700;
            color: var(--primary-color);
            margin-bottom: 6px;
        }

        .header-area h2 {
            font-size: 1.1rem;
            color: var(--text-muted);
            font-weight: 400;
        }

        .form-group {
            text-align: right;
            margin-bottom: 18px;
        }

        .form-group label {
            display: block;
            font-weight: 700;
            margin-bottom: 6px;
            font-size: 0.85rem;
            color: #475569;
        }

        select, input[type="text"], textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            background-color: #ffffff;
            font-size: 0.95rem;
            color: var(--text-main);
            outline: none;
            transition: border-color 0.2s ease;
        }

        select:focus, input[type="text"]:focus, textarea:focus {
            border-color: var(--primary-color);
        }

        select {
            cursor: pointer;
            appearance: select; 
            -webkit-appearance: select;
        }

        select:disabled {
            background-color: #f1f5f9;
            color: #94a3b8;
            cursor: not-allowed;
        }

        textarea {
            resize: vertical;
            min-height: 140px;
        }

        .btn-submit {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            padding: 13px;
            font-size: 1.05rem;
            font-weight: 700;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            background: var(--primary-color);
            color: #ffffff;
            transition: background 0.2s ease;
            margin-top: 10px;
        }

        .btn-submit:hover {
            background: var(--primary-hover);
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 0.9rem;
            color: var(--text-muted);
            text-decoration: none;
        }
        .back-link:hover {
            color: var(--primary-color);
        }
    </style>
</head>
<body>

    <div class="main-container">
        <div class="header-area">
            <h1>خبرچین</h1>
            <h2>ثبت یه گزارش از شهرمون ✍️</h2>
        </div>
        
        <form method="post" action="add_report_compute.php">
            
            <div class="form-group">
                <label for="state-select">استان شما</label>
                <select id="state-select" name="state" required>
                    <option value="">-- انتخاب استان --</option>
                    <?php
                    /** @var PDO $pdo */
                    $sql = "SELECT name FROM reports_state";
                    $result = $pdo->query($sql);
                    while($row = $result->fetch()) {
                        echo "<option value='".htmlspecialchars($row['name'])."'>".htmlspecialchars($row['name'])."</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="form-group">
                <label for="city-select">شهر شما</label>
                <select id="city-select" name="city" disabled required>
                    <option value="">-- اول استان را انتخاب کنید --</option>
                </select>
            </div>

            <div class="form-group">
                <label for="category_name">انتخاب دسته‌بندی موضوعی</label>
                <select name="category_name" id="category_name" required>
                    <option value="">-- انتخاب کنید --</option>
                    <?php
                    $sql = "SELECT title, icon FROM reports_category";
                    $result2 = $pdo->query($sql);
                    while ($row2 = $result2->fetch()) {
                        echo "<option value='".htmlspecialchars($row2['title'])."'>".htmlspecialchars($row2["title"])." ".$row2["icon"]."</option>";
                    }
                    ?>
                </select>
            </div>

            <div class="form-group">
                <label for="display_name">نام نمایشی شما (می‌تواند مستعار باشد)</label>
                <input type="text" id="display_name" name="display_name" placeholder="مثلاً: شهروند خبرنگار، علی و..." required>
            </div>

            <div class="form-group">
                <label for="report_text">متن گزارش و جزئیات حادثه</label>
                <textarea id="report_text" name="report_text" placeholder="گزارشتون رو اینجا به صورت واضح وارد کنید..." required></textarea>
            </div>

            <input type="hidden" value="<?php echo date('Y-m-d H:i:s');?>" name="date">
            
            <button type="submit" class="btn-submit">ارسال گزارش برای بررسی</button>
        </form>
        
        <a href="index.php" class="back-link">← بازگشت به صفحه اصلی</a>
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