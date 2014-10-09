<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<ul class="gp-action">
	<li class="gp-lien <c:if test="${action == \"creer\"}">selected </c:if>">
		<a href="<c:url value="/admin/gerer-societes/creer"/>">
		<i class="fi-plus"></i> Créer
		</a> 
	</li>
	<li class="gp-lien <c:if test="${action == \"modifier\"}">selected </c:if>">
		<a href="<c:url value="/admin/gerer-societes/modifier"/>">Modifier</a> 
	</li>
	<li class="gp-lien <c:if test="${action == \"desactiver\"}">selected </c:if>">
		<a href="#">Désactiver</a>
	</li>
	<li class="gp-lien <c:if test="${action == \"supprimer\"}">selected </c:if>">
		<a href="#">Supprimer</a>
	</li>
</ul>