<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Erreur</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/sources/css/device/app.css"/>">
</head>
<body>


<c:choose>
	<c:when test="${code == -1 }">
		Vueillez vous connecter
	</c:when>
	<c:when test="${code == -2 }">
		<h1>${slug } ne correspond � aucune soci�t� !!!</h1>
	</c:when>
	<c:when test="${code == -0 }">
		<h1>Non habilit� !!!</h1>
		<a class="btn-simple" href="<c:url value="/gestion-de-paie"/>">me rediriger </a>
	</c:when>
</c:choose>
</body>
</html>