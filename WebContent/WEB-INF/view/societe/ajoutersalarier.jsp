<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <c:if test="${message }">
 <div class="message">
 <i class="fi-x"></i>
	
</div>
 </c:if>



<form class="form-bloc" enctype="multipart/form-data"
modelAttribute="etatcivil" 
modelAttribute="immatriculation" 
modelAttribute="coordonneebancaire" 
modelAttribute="paie"
modelAttribute="poste"
modelAttribute="affectation"
action="" method="post" role="form">
<div class="titre">Ajouter un salari�</div>

<fieldset>
<legend>Etat civil :</legend>
<div class="input c2 form-group">
	<label>Nom : </label>
	<input type="text" placeholder="nom du salari�" name="nom"/>
</div>
<div class="input c2">
	<label>Prenom: </label>
	<input type="text" placeholder="prenom du salari�" name="prenom"/>
</div>
<div class="input c3">
	<label>Matricule : </label>
	<input type="text" placeholder="matricule du salari�" name="matricule"/>
</div>
<div class="input c3">
	<label>Situation familiale : </label>
	<input type="text" placeholder="situation familiale du salari�" name="situationfamiliale"/>
</div>
<div class="input c3">
	<label>Sexe : </label>

	<select name="civilite">
		<option value="homme">Homme</option>
		<option value="femme">Femme</option>
	</select>
</div>

</fieldset>
<br>
<fieldset>
<legend>Immatriculation :</legend>

<div class="input c4">
	<label>CIN : </label>
	<input type="text" placeholder="cin du salari�" name="cin"/>
</div>

<div class="input c4">
	<label>CNSS : </label>
	<input type="text" placeholder="cnss du salari�" name="cnss"/>
</div>
<div class="input c4">
	<label>Pays: </label>
	<input type="text" placeholder="pays du salari�" name="pays"/>
</div>
<div class="input c4">
	<label>Date de naissance: </label>
	<input type="date" placeholder="date denaissance du salari�" name="_datenaissance"/>
</div>

<div class="input c2">
	<label>Email : </label>
	<input type="text" placeholder="email du salari�" name="mail"/>
</div>
<div class="input c2">
	<label>ville: </label>
	<input type="text" placeholder="ville du salari�" name="ville"/>
</div>
<div class="input s3">
	<label>Adresse: </label>
	<input type="text" placeholder="adresse du salari�" name="adresse"/>
</div>
<div class="input c4">
	<label>Photo: </label>
	<input type="file"  name="file" placeholder="file"/>
</div>
</fieldset>
<br>
<fieldset>
<legend>Coordonn�es bancaires :</legend>


<div class="input c2">
	<label>Banque: </label>
	<input type="text" placeholder="banque du salari�" name="banque"/>
</div>

<div class="input c2">
	<label>Agence : </label>
	<input type="text" placeholder="agence bancaire" name="agence"/>
</div>


<div class="input c2">
	<label>Compte : </label>
	<input type="text" placeholder="compte du salari�" name="compte"/>
</div>
<div class="input c2">
	<label>Libelle compte: </label>
	<input type="text" placeholder="libelle de compte du salari�" name="libellecompte"/>
</div>
</fieldset>
<br>
<fieldset>
<legend>Poste :</legend>
<div class="input c2">
	<label>Date d'embauche : </label>
	<input type="date"  name="_dateembauche"/>
</div>
<fieldset>
<legend>Affectation : </legend>
<div class="input c2">
	<label>D�partement : </label>
	<input type="text" placeholder="departement" name="departement"/>
</div>
<div class="input c2">
	<label> service: </label>
	<input type="text" placeholder="service du salari�" name="service"/>
</div>

</fieldset>
</fieldset>
<br>
<fieldset>
	<legend>Contrat : </legend>
	<div class="input c3">
		<label>Date de debut : </label>
		<input type="date"  name="_datedebut"/>
	</div>
	<div class="input c3">
		<label>Date de fin : </label>
		<input type="date"  name="_datedefin"/>
	</div>
	<div class="input c3">
		<label>Date de fin de la periode d'�ssai : </label>
		<input type="date"  name="_datedefinperiodeessai"/>
	</div>
	<div class="input c2">
		<label>Intitul� de l'emploi : </label>
		<input type="text"  placeholder="Intitul� de l'emploi" name="intituleemploi"/>
	</div>
	<div class="input c2">
		<label>Nature du contrat: </label>
		<input type="text"  placeholder="Nature du contrat" name="nature"/>
	</div>
</fieldset>
<br>
<fieldset>
<legend>La paie :</legend>

<div class="input c3">
	<label>Mode de payement : </label>
	<input type="text" placeholder="mode de payement" name="modepayement"/>
</div>
<div class="input c3">
	<label> Salaire brute: </label>
	<input type="number" placeholder="salaire brute du salari�" name="salairebrute"/>
</div>
<div class="input c3">
	<label> Salaire de base: </label>
	<input type="number" placeholder="salaire de base du salari�" name="salairedebase"/>
</div>
</fieldset>
<br>
<div class="submit">
<input type="submit" class="btn btn-default" value="Enregistrer" />
<input type="reset" class="btn" value="annuler" />
</div>
</form>