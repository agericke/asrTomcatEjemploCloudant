<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proyecto ASR</title>
</head>
<body>
<h1>Ejemplo de Proyecto de Álvaro Gericke con Cloudant ahora con DevOps</h1>
<hr />
<p>Opciones de la clase de Álvaro Gericke:</p>
<p style="color:red">Introducido nuevo cambio en la página</p>
<ul>
<li><a href="listar">Listar</a></li>
<li><a href="insertar?palabra=alvaroGericke">Insertar</a></li>
<li>
	<form action="traducir">
		<input type="text" name="textoTraducir">
		<select name="idiomaDestino">
			<option>en</option>
			<option>es</option>
			<option>fr</option>
		</select>
		
		<input type="submit" value="Traducir">
	</form>
</li>
</ul>
</body>
</html>