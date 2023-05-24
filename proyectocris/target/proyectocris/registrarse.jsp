<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Formulario de Registro</title>
  <link rel="stylesheet" type="text/css" href="">
</head>
<body>
  <style>
     body{
        background: linear-gradient(#ededef, #1a17b8)
    }
    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f2f2f2;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      }
      
      h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
      }
      
      form {
        display: flex;
        flex-direction: column;
      }
      
      .form-group {
        margin-bottom: 20px;
      }
      
      label {
        display: block;
        font-weight: bold;
        margin-bottom: 10px;
        color: #555;
      }
      
      input[type="text"],
      input[type="email"],
      input[type="password"] {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 4px;
        background-color: #f9f9f9;
        color: #333;
      }
      
      input[type="text"]:focus,
      input[type="email"]:focus,
      input[type="password"]:focus {
        outline: none;
        background-color: #e6e6e6;
      }
      
      button[type="submit"] {
        display: block;
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        transition: background-color 0.3s ease;
      }
      
      button[type="submit"]:hover {
        background-color: #45a049;
      }
      
      button[type="submit"]:focus {
        outline: none;
      }
      
      .button-wrapper {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 20px;
      }
      
      .button-wrapper button[type="submit"] {
        margin-bottom: 10px;
      }
      
      .button-wrapper a {
        color: #666;
        text-decoration: none;
        transition: color 0.3s ease;
      }
      
      .button-wrapper a:hover {
        color: #333;
      }
  </style>
  <div class="container">
    <h2>Formulario de Registro</h2>
    <form action="proyecto" method="post"> <!-- Especifica la acción y el método POST -->
      <div class="form-group">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
      </div>
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="password">Contraseña:</label>
        <input type="password" id="password" name="password" required>
      </div>
      <div class="form-group">
        <label for="confirmar-password">Confirmar Contraseña:</label>
        <input type="password" id="confirmar-password" name="confirmar-password" required>
      </div>
      <div class="button-wrapper">
        <button type="submit">Registrarse</button>
        <a href="proyecto?op=volver">Volver</a>
        <a href="proyecto?op=iniciarsesionf">¿Ya tienes una cuenta?</a>
      </div>
    </form>
  </div>
</body>
</html>