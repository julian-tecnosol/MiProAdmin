<?php
/**
 * Created by PhpStorm.
 * User: Tecnosoluciones
 * Date: 03/07/2015
 * Time: 05:20 PM
 */

class Modelo
{
    protected $_db;
    public function __construct()
    {
        $this->_db = new mysqli('localhost', 'root', 'root', 'miprofesional');

        if ( $this->_db->connect_errno )
        {
            echo "Fallo al conectar a MySQL: ". $this->_db->connect_error;
            return;
        }

        $this->_db->set_charset("utf-8");
    }
}