

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<<<<<<< HEAD
<a href="<c:url value="/societe/${scte.slug }/"/>">
<img id="logoSociete" class="onlylarge" src="<c:url value="/documents/${scte.lienLogo() }"/>" />
</a>

<ul class="no-style menu">
								<li class="onlysmall <c:if test="${link == \"accueil\"}"> active </c:if>">
=======


<ul class="no-style menu">
								<li class="logo onlylarge">
									<a href="<c:url value="/societe/${scte.slug }/"/>">
<img id="logoSociete" class="onlylarge" src="<c:url value="/documents/${scte.lienLogo() }"/>" />
</a>
								</li>
								<li class="onlysmall gdp-lien <c:if test="${link == \"accueil\"}"> active </c:if>">
>>>>>>> n-theme
									<a href="<c:url value="/societe/${scte.slug }/"/>" class="skel-layers-ignoreHref">
											Accueil
									</a>
								</li>
<<<<<<< HEAD
								<li class="<c:if test="${link == \"salarie\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-les-salaries"/>" >
									<span class="glyphicon glyphicon-tasks"></span>	G�rer salari�s
=======
								<li class=" gdp-lien <c:if test="${link == \"salarie\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-les-salaries"/>" >
										G�rer salari�s
>>>>>>> n-theme
									</a>
									<ul>
										<li class="<c:if test="${link == \"salarie\" && action == \"ajouter\"}"> active </c:if>">
											<a  href="<c:url value="/societe/${scte.slug }/gerer-salaries/ajouter"/>">
<<<<<<< HEAD
											<span class="glyphicon glyphicon-plus"></span>	Ajouter
=======
												Ajouter
>>>>>>> n-theme
											</a>
										</li>
										<li class="<c:if test="${link == \"salarie\" && action == \"lister\"}"> active </c:if>">
											<a  href="<c:url value="/societe/${scte.slug }/gerer-salaries/lister"/>">
<<<<<<< HEAD
											<span class="glyphicon glyphicon-th-list"></span>	Lister
=======
												Lister
>>>>>>> n-theme
											</a>
										</li>
										 <c:if test="${link == \"salarie\" && action == \"consulter\"}"> 
										<li class="active" >
											<a >
<<<<<<< HEAD
											<span class="glyphicon glyphicon-eye-open"></span>
=======
											
>>>>>>> n-theme
											Consultation
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"salarie\" && action == \"modifier\"}">
										<li class="  active" >
											<a>
<<<<<<< HEAD
											<i class="fi-pencil"></i>
=======
										
>>>>>>> n-theme
											Modifier</a> 
										</li>
										</c:if>
									</ul>
								</li>
<<<<<<< HEAD
								<li class="<c:if test="${link == \"bareme\"}"> active </c:if>">
									<a href="<c:url value="/admin/gerer-baremes"/>" id="sct-link" class="skel-layers-ignoreHref">
									<span class="glyphicon glyphicon-tag"></span>	G�rer bar�mes
=======
								<li class=" gdp-lien <c:if test="${link == \"bareme\"}"> active </c:if>">
									<a href="<c:url value="/admin/gerer-baremes"/>" id="sct-link" class="skel-layers-ignoreHref">
										G�rer bar�mes
>>>>>>> n-theme
									</a>
									<ul>
										<li class="<c:if test="${ action==\"creer\" && link == \"bareme\"}"> active </c:if>">
										<a href="<c:url value="/admin/gerer-baremes/creer"/>">
<<<<<<< HEAD
										<i class="fi-plus"></i>	 Cr�er</a>
										</li>
										<li class="<c:if test="${ action==\"lister\" && link == \"bareme\"}"> active </c:if>">
										<a href="<c:url value="/admin/gerer-baremes/consulter"/>">
										<i class="fi-list"></i>
=======
										 Cr�er</a>
										</li>
										<li class="<c:if test="${ action==\"lister\" && link == \"bareme\"}"> active </c:if>">
										<a href="<c:url value="/admin/gerer-baremes/consulter"/>">
										
>>>>>>> n-theme
										Lister
										</a>
										</li>
									</ul>
								</li>
<<<<<<< HEAD
								<li class=" <c:if test="${link == \"cotisation\"}"> active </c:if>">
									<a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref">
									<i class="fi-dollar-bill"></i>
									G�rer Cotisation
									</a>
								</li>
								<li class="<c:if test="${link == \"societe\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-societe" />" id="about-link" class="skel-layers-ignoreHref">
									<i class="fi-folder"></i>		Soci�t�
=======
								<li class="gdp-lien <c:if test="${link == \"cotisation\"}"> active </c:if>">
									<a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref">
								
									G�rer Cotisation
									</a>
								</li>
								<li class="gdp-lien <c:if test="${link == \"societe\"}"> active </c:if>">
									<a href="<c:url value="/societe/${scte.slug }/gerer-societe" />" id="about-link" class="skel-layers-ignoreHref">
										g�rer Soci�t�
>>>>>>> n-theme
									</a>
									<ul>
									<c:if test="${link == \"societe\" && action == \"visualiser\"}"> 
										<li class="active" >
											<a >
<<<<<<< HEAD
											<i class="fi-info"></i>
=======
										
>>>>>>> n-theme
											Informations
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"societe\" && action == \"modifier\"}"> 
										<li class="active" >
											<a >
<<<<<<< HEAD
											<i class="fi-pencil"></i>
=======
										
>>>>>>> n-theme
											Modifier
											</a> 
										</li>
										 </c:if>
										<li class=" <c:if test="${link == \"societe\" && action == \"compte\"}"> active </c:if>" >
										<a href="<c:url value="/societe/${scte.slug }/gerer-societe/comptes"/> ">
<<<<<<< HEAD
										<i class="fi-book"></i>
=======
										
>>>>>>> n-theme
											G�rer compte</a></li>
										<c:if test="${link == \"societe\" && action == \"excercice\"}"> 
										<li class="active" >
											<a >
<<<<<<< HEAD
											<i class="fi-ticket"></i>
=======
										
>>>>>>> n-theme
											Exercices
											</a> 
										</li>
										 </c:if>
										<li><a href="<c:url value="/logout_user"/>">
<<<<<<< HEAD
										<i class="fi-x"></i>
=======
										
>>>>>>> n-theme
										d�connecter</a></li>
									</ul>
								</li>
								
							</ul>