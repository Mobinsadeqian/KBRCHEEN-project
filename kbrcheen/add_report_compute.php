<html>
    <head>
        <title>خبرچین</title>
    </head>
    <?php
        
        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            require_once 'config.php';
            $city_name = $_POST["city"];
            $category_name = $_POST["category_name"];
            $display_name = $_POST["display_name"];
            $report_text = $_POST["report_text"];
            $date = $_POST["date"];
            if (isset($city_name) and isset($category_name) and isset($display_name) and isset($report_text)) {
                $sql = "SELECT id, state_id FROM reports_city WHERE name = '$city_name'";
                $result = $conn->query($sql);
                $row = $result->fetch_assoc();
                $city_id = $row["id"];
                $state_id = $row["state_id"];

                $sql2 = "SELECT id FROM reports_category WHERE title = '$category_name'";
                $result2 = $conn->query($sql2);
                $row2 = $result2->fetch_assoc();
                $cat_id = $row2["id"];

                $sql_ins = "INSERT INTO reports_report (display_name, text, category_id, city_id, created_at, state_id) VALUES 
                ('$display_name', '$report_text', '$cat_id', '$city_id', '$date', '$state_id'   )";
                if ($conn->query($sql_ins)) {
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