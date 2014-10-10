

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="no-style menu">
								<li  class="gdp-lien <c:if test="${link == \"accueil\"}"> active </c:if>">
									<a href="<c:url value="/admin/"/>" id="top-link" class="skel-layers-ignoreHref">
										Accueil
									</a>
								</li>
								<li  class="gdp-lien <c:if test="${link == \"societe\"}"> active </c:if>">
									<a href="<c:url value="/admin/gerer-societes"/>" id="sct-link" class="skel-layers-ignoreHref">
										Gérer sociétés
									</a>
									<ul>
										<li class="<c:if test="${link == \"societe\" && action == \"creer\"}"> active </c:if>">
											<a  href="<c:url value="/admin/gerer-societes/creer"/>">
											Créer
											</a>
										</li>
										<li class="<c:if test="${link == \"societe\" && action == \"lister\"}"> active </c:if>">
											<a  href="<c:url value="/admin/gerer-societes/lister"/>">
											Lister
											</a>
										</li>
										 <c:if test="${link == \"societe\" && action == \"modifier\"}"> 
										<li class="active" >
											<a >
										
											Modifier
											</a> 
										</li>
										 </c:if>
										  <c:if test="${link == \"societe\" && action == \"excercice\"}"> 
										<li class="active" >
											<a >
											
											Exercices
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"societe\" && action == \"consulter\"}"> 
										<li class=" active " >
											<a>
										
											Consultation</a> 
										</li>
										</c:if>
									</ul>
								</li>
								<li  class=" gdp-lien <c:if test="${link == \"bareme\"}"> active </c:if>">
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
								<li  class="gdp-lien <c:if test="${link == \"cotisation\"}"> active </c:if>">
									<a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref">
									
									Gérer Cotisation
									</a>
								</li>
								<li class="gdp-lien <c:if test="${link == \"compte\"}"> active </c:if>">
									<a href="<c:url value="/admin/gerer-mon-compte" />" id="about-link" class="skel-layers-ignoreHref">
											Mon compte
									</a>
									<ul>
										<li class=" <c:if test="${link == \"compte\" && action == \"modifier\"}"> active </c:if>" >
										<a href="<c:url value="/admin/gerer-mon-compte/modifier"/> ">Modifier</a></li>
										<li><a href="<c:url value="/logout_user"/>">déconnecter</a></li>
									</ul>
								</li>
								
							</ul>