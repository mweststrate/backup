<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sprig MVC</title>
</head>
<body>
	<h3>Alterar tarefa - ${tarefas.id}</h3>
	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefas.id}" /> 
		Descri��o:<br />
		<textarea name="descricao" cols="100" rows="5" >
             ${tarefas.descricao}
        </textarea>
		<br /> Finalizado? <input type="checkbox" name="finalizado"
			value="true" ${tarefas.finalizado? 'checked' : '' } /> <br />
		    Data de finaliza��o: <br/> <input type="text" name="dataFormatada"
			value="${tarefas.dataFormatada}" />
		<br /> <input type="submit" value="Alterar" />
	</form>
</body>
</html>