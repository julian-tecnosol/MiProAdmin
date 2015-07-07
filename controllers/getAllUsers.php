<?php
/**
 * Created by PhpStorm.
 * User: Tecnosoluciones
 * Date: 03/07/2015
 * Time: 06:08 PM
 */

require_once("../modules/usuariosModel.php");

$usuariosClass = new usuariosModel();

$usuarios = $usuariosClass->getAllUser();

foreach($usuarios as $usuario){
    $fechaInscripcion = $usuario["created_on"];
    /********************************************************************************/
    /***    CREAR ARRAY DE CUSTOMFIELD(CORREO,CELULAR,TIEMPO DE AFILIACION) ********/
    /********************************************************************************/
    $campos = explode("&",$usuario["campos_concat"]);
    $control = count($campos);
    $arrSubCampos = [];
    for($i = 0; $i < $control; $i++){
        $subCampos = explode("|",$campos[$i]);
        if($subCampos[0] == 7){
            $arrSubCampos['correo'] = $subCampos[1];
        }elseif($subCampos[0] == 8){
            $arrSubCampos['celular'] = $subCampos[1];
        }elseif($subCampos[0] == 15){
            $arrSubCampos['tiempo'] = $subCampos[1];
        }
    }
    /*********************************************************************************/


    /****************************************************/
    /****   CALCULAR LA FECHA DE VENCIMIENTO        ****/
    /***************************************************/
        $diaFecha =  substr($fechaInscripcion,8,2);
        $mesFecha =  substr($fechaInscripcion,6,1);
        $yearFecha =  substr($fechaInscripcion,0,4);
        $diaFinContrato = $diaFecha;
        $mesFinContrato = $mesFecha;
        $yearFinContrato = $yearFecha;
        $diaActual = date("j");
        $mesActual = date("n");
        $yearActual = date("Y");

        $mesFinContrato += $arrSubCampos['tiempo'];
        if($mesFinContrato > 12){
            $mesFinContrato -= 12;
            $yearFinContrato +=1;
        }

        $mesesRestantes = $mesFinContrato - $mesActual;
        $diasRestantes = $diaFinContrato - $diaActual;

        if($mesesRestantes < 0) {
            if($yearFinContrato > $yearActual){
                $mesesRestantes =+ 12;
            }
        }
        if($mesesRestantes <= 1){
            if($mesesRestantes == 0){
                if($diasRestantes <= 8){
                    echo '<tr class="danger">';
                }elseif($diasRestantes > 8 && $diasRestantes <= 15){
                    echo '<tr class="warning">';
                }else{
                    echo '<tr class="info">';
                }
            }else{
                echo '<tr class="info">';
            }
        }else{
            echo '<tr class="success">';
        }
    /*****************************************************/
    /*****************************************************/
        /******* VALIDANDO VARIBLES *******/
        $arrSubCampos['correo'] = array_key_exists('correo',$arrSubCampos) ? $arrSubCampos['correo'] : " ";
        $arrSubCampos['celular'] = array_key_exists('celular',$arrSubCampos) ? $arrSubCampos['celular'] : " ";
        $arrSubCampos['tiempo'] = array_key_exists('tiempo',$arrSubCampos) ? $arrSubCampos['tiempo'] : 0;


        echo '<td>'.$usuario["virtuemart_product_id"].'</td>';
        echo '<td>'.utf8_encode($usuario["product_name"]).'</td>';
        echo '<td>'.utf8_encode($usuario["product_sku"]).'</td>';
        echo '<td>'.$arrSubCampos['correo'].'</td>';
        echo '<td>'.$arrSubCampos['celular'].'</td>';
        echo '<td>'.$fechaInscripcion.'</td>';
        echo '<td>'.$diaFinContrato.'-'.$mesFinContrato.'-'.$yearFinContrato.'</td>';
        echo '<td><button class="btn btn-primary verPerfil"><i class="fa fa-refresh"></i></button></td>';
    echo '</tr>';
};