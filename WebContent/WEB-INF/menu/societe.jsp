

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<ul class="no-style menu">
								<li class="logo onlylarge">
									<a href="<c:url value="/societe/${scte.slug }/"/>">
<img id="logoSociete" class="onlylarge" src="<c:url value="/documents/${scte.lienLogo() }"/>" />
</a>
								</li>
								<li class="onlysmall gdp-lien <c:if test="${link == \"accueil\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/"/>" class="skel-layers-ignoreHref">
											Accueil
									</a>
								</li>
								<li class=" gdp-lien <c:if test="${link == \"salarie\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-les-salaries"/>" >
										Gérer salariés
									</a>
									<ul>
										<li class="<c:if test="${link == \"salarie\" && action == \"ajouter\"}"> active </c:if>">
											<a  href="<c:url value="/societe/${scte.slug }/gerer-salaries/ajouter"/>">
												Ajouter
											</a>
										</li>
										<li class="<c:if test="${link == \"salarie\" && action == \"lister\"}"> active </c:if>">
											<a  href="<c:url value="/societe/${scte.slug }/gerer-salaries/lister"/>">
												Lister
											</a>
										</li>
										 <c:if test="${link == \"salarie\" && action == \"consulter\"}"> 
										<li class="active" >
											<a >
											
											Consultation
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"salarie\" && action == \"modifier\"}">
										<li class="  active" >
											<a>
										
											Modifier</a> 
										</li>
										</c:if>
									</ul>
								</li>
								<li class=" gdp-lien <c:if test="${link == \"bareme\"}"> active </c:if>">
									<a href="<c:url value="/admin/gerer-baremes"/>" id="sct-link" class="skel-layers-ignoreHref">
										Gérer barèmes
									</a>
									<ul>
										<li class="<c:if test="${ action==\"creer\" && link == \"bareme\"}"> active </c:if>">
										<a href="<c:url value="/admin/gerer-baremes/creer"/>">
										 Créer</a>
										</li>
										<li class="<c:if test="${ action==\"lister\" && link == \"bareme\"}"> active </c:if>">
										<a href="<c:url value="/admin/gerer-baremes/consulter"/>">
										
										Lister
										</a>
										</li>
									</ul>
								</li>
								<li class="gdp-lien <c:if test="${link == \"cotisation\"}"> active </c:if>">
									<a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref">
								
									Gérer Cotisation
									</a>
								</li>
								<li class="gdp-lien <c:if test="${link == \"societe\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-societe" />" id="about-link" class="skel-layers-ignoreHref">
										gérer Société
									</a>
									<ul>
									<c:if test="${link == \"societe\" && action == \"visualiser\"}"> 
										<li class="active" >
											<a >
										
											Informations
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"societe\" && action == \"modifier\"}"> 
										<li class="active" >
											<a >
										
											Modifier
											</a> 
										</li>
										 </c:if>
										<li class=" <c:if test="${link == \"societe\" && action == \"compte\"}"> active </c:if>" >
										<a href="<c:url value="/societe/${scte.slug }/gerer-societe/comptes"/> ">
										
											Gérer compte</a></li>
										<c:if test="${link == \"societe\" && action == \"excercice\"}"> 
										<li class="active" >
											<a >
										
											Exercices
											</a> 
										</li>
										 </c:if>
										<li><a href="<c:url value="/logout_user"/>">
										
										déconnecter</a></li>
									</ul>
								</li>
								
							</ul>