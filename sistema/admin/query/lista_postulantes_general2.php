<?php
include('qc.php');

$sqlCategoria = "SELECT * FROM categorias ORDER BY id ASC";
$resultadoCategorias = $conn->query($sqlCategoria);
while($rowCategoria=$resultadoCategorias->fetch_assoc()){
    $categoria = $rowCategoria['id'];
    echo'
    <p class="h2">
          <i class="bi bi-flag-fill text-success"></i> 
          '.$rowCategoria['nombre'].'
              <a href="#inicio">
                <i class="bi bi-arrow-bar-up"></i>
              </a>
          </p>
          <table class="table">
            <thead class="text-light text-center" style="background:#b23933">
                <tr>
                <th scope="col">Nombre</th>
                <th scope="col">CURP</th>
                <th scope="col">Edad</th>
                <th scope="col">Municipio</th>
                <th scope="col">Teléfono</th>
                </tr>
            </thead>
            <tbody class="text-center">

    ';

    // while interno
    $sqlUsr = "SELECT * FROM usr WHERE categoria = '$categoria' ORDER BY id ASC";
    $resultadoUsr = $conn->query($sqlUsr);
    while($rowUsr=$resultadoUsr->fetch_assoc()){
        echo'
        <tr>
            <td>'.$rowUsr['nombre'].'</td>
            <td>'.$rowUsr['curp'].'</td>
            <td>'.$rowUsr['edad'].'</td>
            <td>'.$rowUsr['municipio'].'</td>
            <td>'.$rowUsr['telefono'].'</td>
        </tr>
        ';
    
}
    // while interno
        echo '
            </tbody>
        </table>

        ';

}




?>