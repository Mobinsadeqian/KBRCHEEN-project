
<html>
    <head>
        <title>خبرچین</title>
    </head>
    <?php
        /** @var PDO $pdo */
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            require_once 'config.php';
            $city_name = $_POST["city"];
            $category_name = $_POST["category_name"];
            $display_name = $_POST["display_name"];
            $report_text = $_POST["report_text"];
            $date = $_POST["date"];
            if (isset($city_name) and isset($category_name) and isset($display_name) and isset($report_text)) {
                $sql = "SELECT id, state_id FROM reports_city WHERE name = ?";
                $result = $pdo->prepare($sql);
                $result->execute([$city_name]);
                $row = $result->fetch();
                $city_id = $row["id"];
                $state_id = $row["state_id"];

                $sql2 = "SELECT id FROM reports_category WHERE title = ?";
                $result2 = $pdo->prepare($sql2);
                $result2->execute([$category_name]);
                $row2 = $result2->fetch();
                $cat_id = $row2["id"];

                $sql_ins = "INSERT INTO reports_report (display_name, text, category_id, city_id, created_at, state_id) 
            VALUES (?, ?, ?, ?, ?, ?)";
            $result_ins = $pdo->prepare($sql_ins);
            $result_ins->execute([
                $display_name, 
                $report_text, 
                $cat_id, 
                $city_id, 
                $date, 
                $state_id
            ]);
                if ($result_ins) {
                    echo "<script>alert('گزارش با موفقیت ثبت شد')</script>";
                    echo "<script>window.location.href='index.php'</script>";
                }
            } else {
                echo "<script>alert('مقادیر نمی‌تواند خالی باشد')</script>";
                echo "<script>window.location.href='add_report.php'</script>";
            }
        }
    ?>
</html>