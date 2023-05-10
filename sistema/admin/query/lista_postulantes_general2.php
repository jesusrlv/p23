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

// Mx
$sqlPostulantes ="SELECT * FROM usr WHERE perfil = 1";
$resultadoSQL = $conn->query($sqlPostulantes);
$x = 0;
while($rowSQL = $resultadoSQL->fetch_assoc()){
    $x++;
    $idDocs = $rowSQL['id'];
    $contador = "SELECT COUNT(documento) AS contar FROM documentos WHERE id_ext = '$idDocs'";
    $resultadoContar = $conn->query($contador);
    $rowContar = $resultadoContar -> fetch_assoc();
    $numero = $rowContar['contar'];
    echo'
    <tr>
        <td>'.$x.'</td>
        <td>'.$rowSQL['nombre'].'</td>
        <td>'.$rowSQL['curp'].'</td>
        <td>'.$rowSQL['edad'].'</td>';
        $mun = $rowSQL['municipio'];
    $sqlMunicipio = "SELECT * FROM municipio WHERE id = '$mun'";
    $resultadoMunicipio = $conn -> query($sqlMunicipio);
    $rowMunicipio = $resultadoMunicipio->fetch_assoc();
    echo'
        <td>'.$rowMunicipio['municipio'].'</td>
        ';
    echo'
        <td>'.$rowSQL['telefono'].'</td>
        <td>
            <a href="listado_docs.php?id='.$rowSQL['id'].'">';
        if ($numero == 0){
            echo'
            <span class="badge rounded-pill text-bg-danger">
            ';
        }
        else if ($numero == 1 || $numero == 2 || $numero == 3 || $numero == 4 || $numero == 5 || $numero == 6 || $numero == 7 || $numero == 8){
            echo'
            <span class="badge rounded-pill text-bg-warning">
            ';
        }
        else if ($numero == 9){
            echo'
            <span class="badge rounded-pill text-bg-primary">
            ';
        }
            echo'
                '.$numero.'
            </span>
            </a>
        </td>
        <td><a href="calificaciones.php?id='.$rowSQL['id'].'&postulacion=1" type="button" class="btn btn-primary btn-sm">Calificaciones</a></td>
    </tr>
';
}


?>