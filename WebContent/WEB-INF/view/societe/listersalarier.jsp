<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
 <div class="context-lister">

 	<table  class="table table-bordered table-striped table-condensed">
 	<caption>Liste de salariés [${fn:length(scte.salaries ) }]</caption>
 		<thead>
 			<tr>
 				<th>Nom de salarié</th>
 				<th colspan="3" style="text-align:center">Action</th>
 			</tr>	
 		</thead>
 		<tbody>
 			<c:forEach items="${scte.salaries }" var="s">
 				<tr>
 				
 						<td>
 						<img width="20" style="border-radius:5px" src="<c:url value="/documents/${s.profil() }"/>" />
 							<a href="<c:url value="/societe/${slug }/gerer-salaries/consulter-salarie/${s.salarieId }" /> "> 
 						${s.etatcivile.nom } ${s.etatcivile.prenom }
 						</a>
 						</td>
 					
 					<td style="text-align:center; font-size:20px">
	 					<a href="<c:url value="/societe/${slug }/gerer-salaries/consulter-salarie/${s.salarieId }" /> "> 
							<span class="glyphicon glyphicon-eye-open"></span>
						</a>
 					</td>
 					<td style="text-align:center; font-size:20px">
 					<a href="<c:url value="/societe/${slug }/gerer-salaries/modifier-salarie/${s.salarieId }" /> "> 
							<span class="glyphicon glyphicon-pencil"></span>
						</a>
 					</td>
 						
<!--  						 <div class="btn-group">  -->
<!-- 							  <button class="btn btn-default dropdown-toggle" data-toggle="dropdown"> Action</button> -->
<!-- 							  <ul class="dropdown-menu"> -->
<%-- 							    <li><a href="<c:url value="/societe/${slug }/gerer-salaries/modifier-salarie/${s.salarieId }" /> "> --%>
<!-- 							    	Modifier -->
<!-- 							    	</a> -->
<!-- 							    </li> -->
<!-- 							    <li><a href="#">Supprimer</a></li> -->
<!-- 							    <li class="divider"></li> -->
<%-- 							    <li><a href="<c:url value="/societe/${slug }/gerer-salaries/consulter-salarie/${s.salarieId }" /> "> --%>
<!-- 							    Consulter</a></li> -->
<!-- 							  </ul> -->
<!-- 							</div> -->
 					<td style="text-align:center; font-size:20px; color:#e05555">
 					<a href="<c:url value="/societe/${slug }/gerer-salaries/consulter-salarie/${s.salarieId }" /> "> 
							<span style=" color:#e05555" class="glyphicon glyphicon-trash"></span>
						</a>
 					</td>
 				</tr>
 			</c:forEach>
 		</tbody>
 	</table>
 </div>