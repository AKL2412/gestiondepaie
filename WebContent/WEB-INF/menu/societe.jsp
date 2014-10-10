

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a href="<c:url value="/societe/${scte.slug }/"/>">
<img id="logoSociete" class="onlylarge" src="<c:url value="/documents/${scte.lienLogo() }"/>" />
</a>

<ul class="no-style menu">
								<li class="onlysmall <c:if test="${link == \"accueil\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/"/>" class="skel-layers-ignoreHref">
											Accueil
									</a>
								</li>
								<li class="<c:if test="${link == \"salarie\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-les-salaries"/>" >
									<span class="glyphicon glyphicon-tasks"></span>	G�rer salari�s
									</a>
									<ul>
										<li class="<c:if test="${link == \"salarie\" && action == \"ajouter\"}"> active </c:if>">
											<a  href="<c:url value="/societe/${scte.slug }/gerer-salaries/ajouter"/>">
											<span class="glyphicon glyphicon-plus"></span>	Ajouter
											</a>
										</li>
										<li class="<c:if test="${link == \"salarie\" && action == \"lister\"}"> active </c:if>">
											<a  href="<c:url value="/societe/${scte.slug }/gerer-salaries/lister"/>">
											<span class="glyphicon glyphicon-th-list"></span>	Lister
											</a>
										</li>
										 <c:if test="${link == \"salarie\" && action == \"consulter\"}"> 
										<li class="active" >
											<a >
											<span class="glyphicon glyphicon-eye-open"></span>
											Consultation
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"salarie\" && action == \"modifier\"}">
										<li class="  active" >
											<a>
											<i class="fi-pencil"></i>
											Modifier</a> 
										</li>
										</c:if>
									</ul>
								</li>
								<li class="<c:if test="${link == \"bareme\"}"> active </c:if>">
									<a href="<c:url value="/admin/gerer-baremes"/>" id="sct-link" class="skel-layers-ignoreHref">
									<span class="glyphicon glyphicon-tag"></span>	G�rer bar�mes
									</a>
									<ul>
										<li class="<c:if test="${ action==\"creer\" && link == \"bareme\"}"> active </c:if>">
										<a href="<c:url value="/admin/gerer-baremes/creer"/>">
										<i class="fi-plus"></i>	 Cr�er</a>
										</li>
										<li class="<c:if test="${ action==\"lister\" && link == \"bareme\"}"> active </c:if>">
										<a href="<c:url value="/admin/gerer-baremes/consulter"/>">
										<i class="fi-list"></i>
										Lister
										</a>
										</li>
									</ul>
								</li>
								<li class=" <c:if test="${link == \"cotisation\"}"> active </c:if>">
									<a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref">
									<i class="fi-dollar-bill"></i>
									G�rer Cotisation
									</a>
								</li>
								<li class="<c:if test="${link == \"societe\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-societe" />" id="about-link" class="skel-layers-ignoreHref">
									<i class="fi-folder"></i>		Soci�t�
									</a>
									<ul>
									<c:if test="${link == \"societe\" && action == \"visualiser\"}"> 
										<li class="active" >
											<a >
											<i class="fi-info"></i>
											Informations
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"societe\" && action == \"modifier\"}"> 
										<li class="active" >
											<a >
											<i class="fi-pencil"></i>
											Modifier
											</a> 
										</li>
										 </c:if>
										<li class=" <c:if test="${link == \"societe\" && action == \"compte\"}"> active </c:if>" >
										<a href="<c:url value="/societe/${scte.slug }/gerer-societe/comptes"/> ">
										<i class="fi-book"></i>
											G�rer compte</a></li>
										<c:if test="${link == \"societe\" && action == \"excercice\"}"> 
										<li class="active" >
											<a >
											<i class="fi-ticket"></i>
											Exercices
											</a> 
										</li>
										 </c:if>
										<li><a href="<c:url value="/logout_user"/>">
										<i class="fi-x"></i>
										d�connecter</a></li>
									</ul>
								</li>
								
							</ul>