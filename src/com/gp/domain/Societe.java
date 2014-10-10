package com.gp.domain;

// Generated 19 sept. 2014 17:14:43 by Hibernate Tools 3.4.0.CR1

import java.io.File;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.gp.domain.Utilisateur;

/**
 * Societe generated by hbm2java
 */
@Entity
@Table(name = "societe", catalog = "gp")
public class Societe implements java.io.Serializable {

	private Integer societeId;
	private String intituleSociete;
	private String patente;
	private String idfiscale;
	private String rcCodeTribunal;
	private String cnss;
	private String cimr;
	private String telephone;
	private String fax;
	private String email;
	private String adresse;
	private String mutuelle;
	private Date dateajout;
	private String logo;
	private String slug;
	private Set<Salarie> salaries = new HashSet<Salarie>(0);
	private Set<Utilisateur> utilisateurs = new HashSet<Utilisateur>(0);
	private Set<Exercice> exercices = new HashSet<Exercice>(0);
	private Set<Societebareme> societebaremes = new HashSet<Societebareme>(0);

	public Societe() {
	}
	public String toString() {
		return "Intitule :"+this.intituleSociete+"\nDate d'ajout : "+this.dateajout+"\nLogo : "+this.logo;
	}
	public String lienLogo(){
		Utilisateur u = this.compteDefaut();
		if(u != null){
			return u.getLogin()+File.separator+"logos"+File.separator+this.logo;
		}
		return "vide";
			
	}
	public Utilisateur compteDefaut(){
		for(Utilisateur u:this.utilisateurs){
			if(u.getRole().getNum() == 2)
				return u;
		}
		return null;
	}
	public Societe(String intituleSociete, String patente, String idfiscale,
			String rcCodeTribunal, String cnss, String cimr, String telephone,
			String fax, String email, String adresse, String mutuelle,
			Date dateajout, String logo, String slug) {
		this.intituleSociete = intituleSociete;
		this.patente = patente;
		this.idfiscale = idfiscale;
		this.rcCodeTribunal = rcCodeTribunal;
		this.cnss = cnss;
		this.cimr = cimr;
		this.telephone = telephone;
		this.fax = fax;
		this.email = email;
		this.adresse = adresse;
		this.mutuelle = mutuelle;
		this.dateajout = dateajout;
		this.logo = logo;
		this.slug = slug;
	}

	public Societe(String intituleSociete, String patente, String idfiscale,
			String rcCodeTribunal, String cnss, String cimr, String telephone,
			String fax, String email, String adresse, String mutuelle,
			Date dateajout, String logo, String slug, Set<Salarie> salaries,
			Set<Utilisateur> utilisateurs, Set<Exercice> exercices,
			Set<Societebareme> societebaremes) {
		this.intituleSociete = intituleSociete;
		this.patente = patente;
		this.idfiscale = idfiscale;
		this.rcCodeTribunal = rcCodeTribunal;
		this.cnss = cnss;
		this.cimr = cimr;
		this.telephone = telephone;
		this.fax = fax;
		this.email = email;
		this.adresse = adresse;
		this.mutuelle = mutuelle;
		this.dateajout = dateajout;
		this.logo = logo;
		this.slug = slug;
		this.salaries = salaries;
		this.utilisateurs = utilisateurs;
		this.exercices = exercices;
		this.societebaremes = societebaremes;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "societeID", unique = true, nullable = false)
	public Integer getSocieteId() {
		return this.societeId;
	}

	public void setSocieteId(Integer societeId) {
		this.societeId = societeId;
	}

	@Column(name = "intituleSociete", nullable = false)
	public String getIntituleSociete() {
		return this.intituleSociete;
	}

	public void setIntituleSociete(String intituleSociete) {
		this.intituleSociete = intituleSociete;
	}

	@Column(name = "patente", nullable = false)
	public String getPatente() {
		return this.patente;
	}

	public void setPatente(String patente) {
		this.patente = patente;
	}

	@Column(name = "idfiscale", nullable = false)
	public String getIdfiscale() {
		return this.idfiscale;
	}

	public void setIdfiscale(String idfiscale) {
		this.idfiscale = idfiscale;
	}

	@Column(name = "rcCodeTribunal", nullable = false, length = 200)
	public String getRcCodeTribunal() {
		return this.rcCodeTribunal;
	}

	public void setRcCodeTribunal(String rcCodeTribunal) {
		this.rcCodeTribunal = rcCodeTribunal;
	}

	@Column(name = "cnss", nullable = false)
	public String getCnss() {
		return this.cnss;
	}

	public void setCnss(String cnss) {
		this.cnss = cnss;
	}

	@Column(name = "cimr", nullable = false)
	public String getCimr() {
		return this.cimr;
	}

	public void setCimr(String cimr) {
		this.cimr = cimr;
	}

	@Column(name = "telephone", nullable = false)
	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Column(name = "fax", nullable = false)
	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "email", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "adresse", nullable = false)
	public String getAdresse() {
		return this.adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	@Column(name = "mutuelle", nullable = false)
	public String getMutuelle() {
		return this.mutuelle;
	}

	public void setMutuelle(String mutuelle) {
		this.mutuelle = mutuelle;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "dateajout", nullable = false, length = 10)
	public Date getDateajout() {
		return this.dateajout;
	}

	public void setDateajout(Date dateajout) {
		this.dateajout = dateajout;
	}

	@Column(name = "logo", nullable = false)
	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	@Column(name = "slug", nullable = false)
	public String getSlug() {
		return this.slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "societe")
	public Set<Salarie> getSalaries() {
		return this.salaries;
	}

	public void setSalaries(Set<Salarie> salaries) {
		this.salaries = salaries;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "societe")
	public Set<Utilisateur> getUtilisateurs() {
		return this.utilisateurs;
	}

	public void setUtilisateurs(Set<Utilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "societe")
	public Set<Exercice> getExercices() {
		return this.exercices;
	}

	public void setExercices(Set<Exercice> exercices) {
		this.exercices = exercices;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "societe")
	public Set<Societebareme> getSocietebaremes() {
		return this.societebaremes;
	}

	public void setSocietebaremes(Set<Societebareme> societebaremes) {
		this.societebaremes = societebaremes;
	}
	public Salarie recupererSalarie(Integer id){
		for(Salarie s:this.salaries){
			if(s.getSalarieId().equals(id)) return s;
		}
		return null;
			
	}

}
