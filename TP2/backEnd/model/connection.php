<?php

class connection
{

  private $usuario = "administrador";
  private $host = "localhost";
  private $password = "administrador";
  private $DB = "Taller_2";
  private $conexion;

  function __construct(){}


  public function conectar()
  {
      $this -> conexion = mysqli_connect($this -> host, $this -> usuario, $this -> password, $this -> DB) or die ("Error en conexion.");
      return $this -> conexion;//devuelve sentencia de BD
  }

}
