<?php
/**
 * Created by PhpStorm.
 * User: Tecnosoluciones
 * Date: 03/07/2015
 * Time: 05:34 PM
 */

require_once "conexion.php";

class usuariosModel extends Modelo{

    public function __construct(){
        parent::__construct();
    }

    public function getAllUser(){
        $result = $this->_db->query('SELECT a.virtuemart_product_id, a.product_name, b.product_sku, b.created_on, group_concat(concat(c.virtuemart_custom_id,"|" ,c.customfield_value ) SEPARATOR "&") as campos_concat FROM joomla_virtuemart_products_es_es a, joomla_virtuemart_products b, joomla_virtuemart_product_customfields c WHERE b.virtuemart_product_id = a.virtuemart_product_id AND c.virtuemart_product_id = a.virtuemart_product_id AND (c.virtuemart_custom_id = 8 OR c.virtuemart_custom_id = 15 OR c.virtuemart_custom_id = 7) GROUP BY a.virtuemart_product_id ORDER BY a.product_name ASC;');

        while($row = $result->fetch_array()){
            $rows[] = $row;
        }

        $result->close();

        return $rows;
    }

    public function getUserById($idPerfil){
        $result = $this->_db->query('SELECT a.virtuemart_product_id, a.product_name, b.product_sku, b.created_on, group_concat(concat(c.virtuemart_custom_id,"|" ,c.customfield_value ) SEPARATOR "&") as campos_concat FROM joomla_virtuemart_products_es_es a, joomla_virtuemart_products b, joomla_virtuemart_product_customfields c WHERE a.virtuemart_product_id = '.$idPerfil.' AND b.virtuemart_product_id = '.$idPerfil.' AND c.virtuemart_product_id = '.$idPerfil.' AND (c.virtuemart_custom_id = 8 OR c.virtuemart_custom_id = 15 OR c.virtuemart_custom_id = 7) ;');

        while($row = $result->fetch_array()){
            $rows[] = $row;
        }

        $result->close();

        return $rows;
    }

    public function updateFecha($idPerfil,$fecha){
        $query = "UPDATE joomla_virtuemart_products SET created_on = '".$fecha."' WHERE virtuemart_product_id = ".$idPerfil.";";

        if($this->_db->query($query) === TRUE){
            return 'Fecha actualizada correctamente';
        }else{
            return 'Ocurrio un error al actualizar la fecha'.$this->_db->error;
        }
    }
}

