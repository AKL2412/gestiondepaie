package com.gp.domain;

// Generated 14 sept. 2014 16:09:18 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Enfant generated by hbm2java
 */
@Entity
@Table(name = "enfant", catalog = "gp")
public class Enfant implements java.io.Serializable {

	private Integer enfantId;
	private Etatcivile etatcivile;
	private Date datenaissance;
	private String nom;
	private String prenom;

	public Enfant() {
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Enfant : \n Nom : "+this.nom+"\nPrenom : "+this.prenom+"\nDate de naissance : "+this.datenaissance+
				"\n--------------------------------------------";
	}

	public Enfant(Etatcivile etatcivile, Date datenaissance, String nom,
			String prenom) {
		this.etatcivile = etatcivile;
		this.datenaissance = datenaissance;
		this.nom = nom;
		this.prenom = prenom;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "enfantID", unique = true, nullable = false)
	public Integer getEnfantId() {
		return this.enfantId;
	}

	public void setEnfantId(Integer enfantId) {
		this.enfantId = enfantId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "etatcivileID")
	public Etatcivile getEtatcivile() {
		return this.etatcivile;
	}

	public void setEtatcivile(Etatcivile etatcivile) {
		this.etatcivile = etatcivile;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "datenaissance", length = 10)
	public Date getDatenaissance() {
		return this.datenaissance;
	}

	public void setDatenaissance(Date datenaissance) {
		this.datenaissance = datenaissance;
	}

	@Column(name = "nom")
	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	@Column(name = "prenom")
	public String getPrenom() {
		return this.prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

}
