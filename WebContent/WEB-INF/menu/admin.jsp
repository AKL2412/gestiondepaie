

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a  href="index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li class="<c:if test="${link == \"societe\"}">active</c:if>">
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Gérer sociétés <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<c:url value="/admin/gerer-societes"/>">Menu</a>
                                </li>
                                <li class="<c:if test="${link == \"societe\" && action == \"creer\"}">active</c:if>">
									<a  href="<c:url value="/admin/gerer-societes/creer"/>">
											Créer
									</a>
								</li>
								<li class="<c:if test="${link == \"societe\" && action == \"lister\"}"> active </c:if>">
									<a  href="<c:url value="/admin/gerer-societes/lister"/>">
											Lister
									</a>
<<<<<<< HEAD
									<ul>
										<li class="<c:if test="${link == \"societe\" && action == \"creer\"}"> active </c:if>">
											<a  href="<c:url value="/admin/gerer-societes/creer"/>">
											<i class="fi-plus"></i>	Créer
											</a>
										</li>
										<li class="<c:if test="${link == \"societe\" && action == \"lister\"}"> active </c:if>">
											<a  href="<c:url value="/admin/gerer-societes/lister"/>">
											<i class="fi-list"></i>	Lister
											</a>
										</li>
										 <c:if test="${link == \"societe\" && action == \"modifier\"}"> 
										<li class="active" >
											<a >
											<i class="fi-pencil"></i>
											Modifier
											</a> 
										</li>
										 </c:if>
										  <c:if test="${link == \"societe\" && action == \"excercice\"}"> 
										<li class="active" >
											<a >
											<i class="fi-folder"></i>
											Exercices
											</a> 
										</li>
										 </c:if>
										 <c:if test="${link == \"societe\" && action == \"consulter\"}"> 
										<li class=" active " >
											<a>
											<i class="fi-eye"></i>
											Consultation</a> 
										</li>
										</c:if>
									</ul>
=======
>>>>>>> n-theme
								</li>
								<c:if test="${link == \"societe\" && action == \"modifier\"}"> 
										<li class="active" >
											<a >
										
											Modifier
											</a> 
										</li>
<<<<<<< HEAD
									</ul>
								</li>
								<li class=" <c:if test="${link == \"cotisation\"}"> active </c:if>">
									<a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref">
									<i class="fi-dollar-bill"></i>
									Gérer Cotisation
									</a>
								</li>
								<li class="<c:if test="${link == \"compte\"}"> active </c:if>">
									<a href="<c:url value="/admin/gerer-mon-compte" />" id="about-link" class="skel-layers-ignoreHref">
									<i class="fi-torso"></i>		Mon compte
									</a>
									<ul>
										<li class=" <c:if test="${link == \"compte\" && action == \"modifier\"}"> active </c:if>" >
										<a href="<c:url value="/admin/gerer-mon-compte/modifier"/> ">Modifier</a></li>
										<li><a href="<c:url value="/logout_user"/>">déconnecter</a></li>
									</ul>
								</li>
								
							</ul>
=======
								</c:if>
                                
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a>
                        </li>
                        <li>
                            <a href="forms.html"><i class="fa fa-edit fa-fw"></i> Forms</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panels-wells.html">Panels and Wells</a>
                                </li>
                                <li>
                                    <a href="buttons.html">Buttons</a>
                                </li>
                                <li>
                                    <a href="notifications.html">Notifications</a>
                                </li>
                                <li>
                                    <a href="typography.html">Typography</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grid</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
>>>>>>> n-theme
