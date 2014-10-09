<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/sources/css/app.css"/>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="authentification">
	<form name='f' action="<c:url value="/j_spring_security_check"/>"
		method='post'>
	
		<div class="input" style="width: 200px"> 
			<input type="text"
				name="j_username" value="" id="input-login-username" placeholder="Login-nom utilisateur">
			<input  type="password" 
				name="j_password" id="input-login-pass" placeholder="Mot de passe">
				<label for="checkbox">Se souvenir de moi</label><input id="checkbox" name="j_remember_me" type="checkbox">

		</div>
		<div class="submit" style="text-align: center">
			<input type="submit" value="Se connecter" class="btn" id="valider-btn-login">
		</div>

	</form>
	<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
		<div class="error" style="text-align: center">
<!-- 			Votre tentative d'authentification a échouée, Réessayez... <br/> -->
<!-- 			Raisons :<br>  -->
			<strong>
			<c:choose>
				<c:when test="${fn:indexOf(SPRING_SECURITY_LAST_EXCEPTION.message, 'User is disabled') != -1}">
					<c:out value="Compte désactivé, veuillez contacter l'administrateur"></c:out>
				</c:when>
				<c:when test="${fn:indexOf(SPRING_SECURITY_LAST_EXCEPTION.message, 'Maximum sessions of 1 for this principal exceeded') != -1}">
					<c:out value="Votre compte est actuel connecté !!! "></c:out>
				</c:when>
				<c:otherwise> 
					<c:out value="[Login / mot de passse] incorrect"></c:out>
				</c:otherwise>
			</c:choose></strong><br>
			<i class="fi-alert" style="font-size: 30px"></i>
			<br>			
		</div>
	</c:if>
</div>
	
</body>
</html>