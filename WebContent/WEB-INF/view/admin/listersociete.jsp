<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:forEach items="${societes }" var="scte">
	<a href="<c:url value="/admin/gerer-societes/${scte.slug }" />" >
	<div class="societe">
		<div class="logo">
			<img src="<c:url value="/documents/${scte.lienLogo() }"/>"/>
		</div>
		<div class="nom">
			${scte.intituleSociete }
		</div>
	</div>
	</a>
</c:forEach>