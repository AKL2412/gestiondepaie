<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

			<div class="consultation-societe">
		
			<div class="icon">
				<div class="lien">
				<a  href="<c:url value="/societe/${scte.slug }/gerer-societe" />">D�tails</a>
					<a href="<c:url value="/societe/${scte.slug }/gerer-societe/modifier" />">Modifier</a>
					
					<a class="active" href="<c:url value="/societe/${slug }/gerer-societe/exercices" />">Exercices</a>
					<a  href="<c:url value="/societe/${slug }/gerer-salaries/lister"/>">Salari�s</a>
				</div>
				<div class="nom">
					${societe.intituleSociete }
				</div>
				<div class="image">
					<img src="<c:url value="/documents/${societe.lienLogo() }"/>"/>
				</div>
				
			</div>
			<div class="detail">
				<div class="add-exo">
				<div class="buttons">
					<input class="btn-primary" id="ajouter-exo" value="Ajouter un nouvel exercice" type="button">
					</div>
					<form action="" method="post" class="form-blocd" modelAttribute="exercice">
					<c:if test="${message != null}">
						<div class="message alert alert-info">
							<i class="fi-x"></i>
								${message }
							</div>
					</c:if>
						<div class="input c1">
							<label>intitul� de l'exercice : </label>
							<input type="text"  placeholder="intitul� de l'exercice"   name="intituleExercice"/>
						</div>
						<div class="input c2">
							<label>Date de debut d'exercice: </label>
							<input type="date"   name="_dateDebut"/>
						</div>
						<div class="input c2">
							<label>Date de fin d'exercice : </label>
							<input type="date"    name="_dateFin"/>
						</div>
						<div class="submit">
							<input type="submit" class="btn" value="Enregistrer">
							<input type="reset" class="btn" value="Annule">
						</div>
					</form>
					
				</div>
				<c:if test="${fn:length(scte.exercices) > 0  }">
				<div class="les-exos">
				<table  class="table table-bordered table-striped table-condensed">
				<thead>
					<tr>
						<th></th>
						<th>Intitul� de l'exercice</th>
						<th>Debut d'exercice</th>
						<th> Fin d'exercice</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${scte.exercices }" var="exo" varStatus="stat">
					
					<tr>
					<td>${stat.index + 1 }</td>
						<td>${exo.intituleExercice }</td>
						<td>${exo.dateDebut }</td>
						<td>${exo.dateFin }</td>
					</tr>
					</c:forEach>
					</tbody>
					</table>
				</div>
				</c:if>
				
			</div>
		</div>

<script>
jQuery(document).ready(function($) {
	$('.add-exo').attr('etat','non');
	$('#ajouter-exo').click(function(e){
		if($('.add-exo').attr('etat') == 'non'){
			$('.add-exo').animate({height: 230}, 500);
			$('.add-exo').attr('etat','ok');
		}else{
			$('.add-exo').animate({height: 30}, 200);
			$('.add-exo').attr('etat','non');
			}
		
		});
});
</script>

