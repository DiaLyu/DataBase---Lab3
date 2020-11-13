<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <title>Document</title>
</head>
<body>
  <div class = "requires">
          <form action="index.php" method="POST" class = "requires_btn">
            <input type="submit" name="requires_btn1" class = "requires_btn_1" value="Запрос 1">
            <input type="submit" name="requires_btn2" class = "requires_btn_1" value="Запрос 2">
            <input type="submit" name="requires_btn3" class = "requires_btn_1" value="Запрос 3">
            <input type="submit" name="requires_btn4" class = "requires_btn_1" value="Очистить окно">
          </form>
          <div class="requires_output">
              <div class="requires_output_window">
                <?php

                    $connection = mysqli_connect('test.ru', 'root', 'root', 'db_for_labs');

                    if ($connection == false) {
                      echo 'Не удалось подключиться к базе данных!<br>';
                      echo mysqli_connect_error();
                      exit();
                    }

                    if(isset($_POST['requires_btn1'])){
                      $result = mysqli_query($connection, "SELECT `Full_Name`, `Phone_number`, `Wage` FROM `staff`");
                      echo '<table>';
                      echo '<tr>';
                      echo "<td>ФИО сотрудника:" . '</td>' . '<td>Номер телефона: ' . '</td>' . '<td>Зарплата: ' . '</td>';
                      echo '</tr>';
                      while (($row = mysqli_fetch_assoc($result))) { // закончили на 11-ой записи
                        echo '<tr>';
                        echo "<td>" . $row['Full_Name'] . '</td>' . '<td>' . $row['Phone_number'] . '</td>' . '<td> ' . $row['Wage'] . '</td>';
                        echo '</tr>';
                      }
                      echo '</table>';
                    }

                    if(isset($_POST['requires_btn2'])){
                      $result_1 = mysqli_query($connection, "SELECT `Full_Name`, `Address` FROM `staff` ORDER BY `Address`");
                      echo '<table>';
                      echo '<tr>';
                      echo "<td>ФИО сотрудника:" . '</td>' . '<td>Адрес: ' . '</td>';
                      echo '</tr>';
                      while (($row = mysqli_fetch_assoc($result_1))) { // закончили на 11-ой записи
                        echo '<tr>';
                        echo '<td>' . $row['Full_Name'] . '</td>' . '<td>' . $row['Address'] . '</td>';
                        echo '</tr>';
                      }
                      echo '</table>';
                    }

                    if(isset($_POST['requires_btn3'])){
                      $result_2 = mysqli_query($connection, "SELECT `Full_Name`, `Experience` FROM `staff` WHERE `Experience` >= 4 ");
                      echo '<table>';
                      echo '<tr>';
                      echo "<td>ФИО сотрудника:" . '</td>' . '<td>Стаж: ' . '</td>';
                      echo '</tr>';
                      while (($row = mysqli_fetch_assoc($result_2))) { // закончили на 11-ой записи
                        echo '<tr>';
                        echo '<td>' . $row['Full_Name'] . '</td>' . '<td>' . $row['Experience'] . '</td>';
                        echo '</tr>';
                      }
                      echo '</table>';
                    }

                    if(isset($_POST['requires_btn4'])){
                      echo '';
                    }
                ?>
            </div>
       </div>
  </div>
</body>
</html>
