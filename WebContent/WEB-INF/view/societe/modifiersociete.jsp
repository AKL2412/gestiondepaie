
<form class="form-bloc" enctype="multipart/form-data" modelAttribute="societe" action="" method="post">
<div class="titre">${societe.intituleSociete }</div>


<div class="input c1">
	<label>Intitul� de la Soci�t� : </label>
	<input type="text" placeholder="nom de la soci�t�" value="${societe.intituleSociete }" name="intituleSociete"/>
</div>
<div class="input c2">
	<label>ID fiscale : </label>
	<input type="text" placeholder="IDentifiant fiscale de la soci�t�"  value="${societe.idfiscale }"  name="idfiscale"/>
</div>
<div class="input c2">
	<label>CNSS : </label>
	<input type="text" placeholder="CNSS de la soci�t�" value="${societe.cnss }"  name="cnss"/>
</div>

<div class="input c3">
	<label>Code Tribunal : </label>
	<input type="text" placeholder="RC + Code Tribunal de la soci�t�" value="${societe.rcCodeTribunal }" name="rcCodeTribunal"/>
</div>
<div class="input c3">
	<label>FAX : </label>
	<input type="text" placeholder="Le fax de la soci�t�" value="${societe.fax }"  name="fax"/>
</div>
<div class="input c3">
	<label>Email : </label>
	<input type="text" placeholder="Adresse email de la soci�t�" value="${societe.email }"  name="email"/>
</div>
<div class="input c4">
	<label>T�l�phone : </label>
	<input type="text" placeholder="N�telephonex de la soci�t�" value="${societe.telephone }" name="telephone"/>
</div>
<div class="input c4">
	<label>CIMR : </label>
	<input type="text" placeholder="N� CIMR de la soci�t�" value="${societe.cimr }" name="cimr"/>
</div>
<div class="input c4">
	<label>Mutuelle : </label>
	<input type="text" placeholder="N� Mutuelle de la soci�t�" value="${societe.mutuelle }" name="mutuelle"/>
</div>
<div class="input c4">
	<label>Patente : </label>
	<input type="text" placeholder="Patente de la soci�t�" value="${societe.patente }"  name="patente"/>
</div>
<div class="input s3">
	<label>Adresse : </label>
	<input type="text" placeholder="Adresse de la soci�t�" value="${societe.adresse }" name="adresse"/>
</div>
<div class="input c4">
	<label>Changer le Logo (Image) : </label>
	<input type="file"  name="file"/>
</div>

<div class="submit">
<input type="submit" class="btn" value="Enregistrer" />
<input type="reset" class="btn" value="annuler" />
</div>
</form>