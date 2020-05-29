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
		
		String dataPort = data.substring(8, 10)+ "/" + data.substring(5, 7)+ "/" + data.substring(0, 4);
	%>
		<h1>Cadastro de Sessão de Cinema</h1>
		
		<fieldset>
			<legend>Dados da Sessão</legend>
			
			<p>
			Titulo do filme: <%=titulo%><br>
			Data da sessão: <%=dataPort%><br>
			Hora da inicio: <%=inicio%><br>
			Hora de termino: <%=termino%><br>
			Sala: <%=sala %>
			</p>
		</fieldset>		
		
	</body>
</html>