<?php
/**
 * Created by PhpStorm.
 * User: Julian Albero
 * Date: 06/07/2015
 * Time: 05:50 PM
 */

require_once("../modules/usuariosModel.php");
$idperfil = $_POST['idPerfil'];
$fechaNueva = $_POST['nuevaFecha'];

$usuariosClass = new usuariosModel();

$setFecha = $usuariosClass->updateFecha($idperfil,$fechaNueva);

echo $setFecha;