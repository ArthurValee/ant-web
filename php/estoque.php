<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div>
    <table class="table">
      <thead>
        <tr>
        <th scope="col"> Id </th>
        <th scope="col"> Modelo </th>
        <th scope="col"> Versao </th>
        <th scope="col"> Ano </th>
        <th scope="col"> KM </th>
        <th scope="col"> Cor </th>
        <th scope="col"> Valor </th>
        <th scope="col"> Custo </th>

        </tr>
      </thead>

      <tbody> 
        <?php

       

        $sql2 ="select * from estoque ORDER BY id DESC";

        $result3 = $mysqli->query($sql2);
        
        ///////////////////////////////////////////////////////////////////////////////////////////

        while($user_data = mysqli_fetch_assoc($result3))
        {
            echo "<tr>";
            echo "<td>".$user_data['id']. "</td>";
            echo "<td>".$user_data['Modelo']. "</td>";
            echo "<td>".$user_data['Versão']. "</td>";
            echo "<td>".$user_data['Ano']. "</td>";
            echo "<td>".$user_data['Km']. "</td>";
            echo "<td>".$user_data['Cor']. "</td>";
            echo "<td>".$user_data['Valor']. "</td>";
            echo "<td>".$user_data['Custo']. "</td>";
            echo "</tr>";
        }
        
        ?>
      </tbody>

    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>



