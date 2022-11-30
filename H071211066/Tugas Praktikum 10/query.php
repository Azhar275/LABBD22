<?php
class MyQuery
{
  function __construct($conn)
  {
    $this->conn = $conn;
  }

  function show_data()
  {
    echo "-------------------------------------------------------------------------------------------------"."\n";
    echo "| customerName \t\t\t|" . " Are you safe?  \t\t|" . " Total \t\t\t|"."\n";
    echo "-------------------------------------------------------------------------------------------------"."\n";
    $sql = "SELECT `customerName`, `Total`, `id`,
            CASE
              WHEN `Total` > 0 THEN 'You are safe'
              WHEN `Total` < 0 THEN 'You are in debt'
              WHEN `Total` = 0 THEN 'You are running out of credits'
              END
            AS `Are you safe`
            FROM (
              SELECT customers.customerName AS customerName, customers.customerNumber AS id, customers.creditLimit AS creditLimit,
              (customers.creditLimit-(SUM(orderdetails.quantityOrdered*orderdetails.priceEach))) AS Total
              FROM customers
              INNER JOIN orders
              ON customers.customerNumber = orders.customerNumber
              INNER JOIN orderdetails
              ON orderdetails.orderNumber = orders.orderNumber
              GROUP BY customers.customerName
              ORDER BY customers.customerNumber) t";

    // Jalankan Query dan Menampilkan
    $result = $this->conn->query($sql);
    $resultSet = array();
    if ($result->num_rows > 0) {
      $index = 1;
      while ($row = $result->fetch_array()) {
        $resultSet[$index - 1] = $row['id'];
        printf("| %d. %s \t\t| %s \t\t| %s | \n", $index, $row['customerName'], $row['Are you safe'], $row['Total']);
        $index++;
      }
    } else {
      echo "Hasil 0";
    }

    return $resultSet;
  }
}
