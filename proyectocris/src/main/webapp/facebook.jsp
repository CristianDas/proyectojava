<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Mi Página de Comentarios</title>
  <style>
    /* Estilos CSS para la página */
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(#0b0bbc, #070707);
      margin: 0;
      padding: 20px;
    }
    
    h1 {
      text-align: center;
      color: #f9f0f0;
      margin-bottom: 30px;
    }
    
    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      margin-bottom: 20px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    input[type="text"],
    textarea,
    input[type="file"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }
    
    input[type="text"]:focus,
    textarea:focus,
    input[type="file"]:focus {
      outline: none;
      border-color: #666;
    }
    
    button[type="submit"] {
      background-color: #333;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    
    button[type="submit"]:hover {
      background-color: #555;
    }
    
    .comment {
      margin-bottom: 20px;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    .go-back {
    text-align: center;
    
    }
    .comment h3 {   
      color: #333;
      margin-top: 0;
      font-size: 18px;
      margin-bottom: 10px;
    }
    
    .comment p {
      font-size: 16px;
      line-height: 1.5;
    }
    
    .comment img {
      max-width: 100px;
      border-radius: 50%;
      margin-right: 10px;
      float: left;
    }
  </style>
</head>
<body>
  <h1>Facebook</h1>

  <!-- Formulario para publicar comentarios -->
  <form enctype="multipart/form-data">
    <input type="text" id="name" placeholder="Nombre" required>
    <textarea id="message" placeholder="Escribe tu comentario..." required></textarea>
    <input type="file" id="image" accept="image/*">
    <button type="submit">Publicar</button>
  </form>
  <div class="go-back">
    <a href="index.html">Volver atrás</a>
  </div>
  <!-- Lista de comentarios -->
  <div id="comments-list"></div>
</body>
</html>
