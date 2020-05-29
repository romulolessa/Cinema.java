<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="ISO-8859-1">
		<title>Cadsatro de Sessão de Cinema</title>
	</head>
	<body>
	<%
		String titulo = request.getParameter("titulo");
		String data = request.getParameter("data");
		String inicio = request.getParameter("inicio");
		String termino = request.getParameter("termino");
		int sala = Integer.parseInt(request.getParameter("sala"));
	%>
	
	<h1>Cadsatro de Sessão de Cinema</h1>
		
		<form action="SalvarSessao" method="post">
			<fieldset>
				<legend>Dados da Sessãoo</legend>
				
				<p><label for="titulo">Titulo do filme:</label>
				<input type="text" id="titulo" name="titulo" value="<%=titulo %>"></p>
				
				<p><label for="data">Data da Sessão:</label>
				<input type="date" id="data" name="data" value="<%=data %>"></p>
				
				<h3>A hora de termino nao pode ser menor que a hora de inicio!</h3>
				<p><label for="inicio">Hora de Inicio:</label>
				<input type="time" id="inicio" name="inicio" value="<%=inicio %>"></p>
				
				<p><label for="termino">Hora de Termino:</label>
				<input type="time" id="termino" name="termino" value="<%=termino %>"></p>
				
				<p><label for="sala">Sala da Sessão:</label>
				<input type="number" min="1" max="5" id="sala" name="sala" value="<%=sala %>"></p>
			
				<p><input type="submit" value="CadastrarSessao"></p>
			</fieldset>		
		</form>
	</body>
</html>