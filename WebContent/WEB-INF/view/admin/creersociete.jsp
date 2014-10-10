<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <c:if test="${message }">
 <div class="message">
 <i class="fi-x"></i>
	<div>la société <strong>${compte.societe.intituleSociete }</strong> a été ajouté avec succès</div>
	<div class="c-mess">
		<label>Login :</label> ${compte.login }
	</div>
	<div class="c-mess">
		<label>Mot de passe :</label> ${pass }
	</div>
</div>
 </c:if>



<form class="form-bloc" enctype="multipart/form-data" modelAttribute="societe" action="" method="post">
<div class="titre">Ajouter une société</div>


<div class="input c1">
	<label>Intitulé de la Société : </label>
	<input required="required" type="text" placeholder="nom de la société" name="intituleSociete"/>
</div>
<div class="input c2">
	<label>ID fiscale : </label>
	<input type="text" required="required" placeholder="IDentifiant fiscale de la société" name="idfiscale"/>
</div>
<div class="input c2">
	<label>CNSS : </label>
	<input type="text" required="required" placeholder="CNSS de la société" name="cnss"/>
</div>

<div class="input c3">
	<label>Code Tribunal : </label>
	<input type="text" required="required" placeholder="RC + Code Tribunal de la société" name="rcCodeTribunal"/>
</div>
<div class="input c3">
	<label>FAX : </label>
	<input type="text" placeholder="Le fax de la société" name="fax"/>
</div>
<div class="input c3">
	<label>Email : </label>
	<input type="text" required="required" placeholder="Adresse email de la société" name="email"/>
</div>
<div class="input c4">
	<label>Téléphone : </label>
	<input type="text" required="required" placeholder="N°telephonex de la société" name="telephone"/>
</div>
<div class="input c4">
	<label>CIMR : </label>
	<input type="text" required="required" placeholder="N° CIMR de la société" name="cimr"/>
</div>
<div class="input c4">
	<label>Mutuelle : </label>
	<input type="text" required="required" placeholder="N° Mutuelle de la société" name="mutuelle"/>
</div>
<div class="input c4">
	<label>Patente : </label>
	<input type="text" required="required" placeholder="Patente de la société" name="patente"/>
</div>
<div class="input s3">
	<label>Adresse : </label>
	<input type="text" required="required" placeholder="Adresse de la société" name="adresse"/>
</div>
<div class="input c4">
	<label>Logo (Image) : </label>
	<input type="file" required="required" name="file"/>
</div>

<div class="submit">
<input type="submit" class="btn" value="Enregistrer" />
<input type="reset" class="btn" value="annuler" />
</div>
</form>