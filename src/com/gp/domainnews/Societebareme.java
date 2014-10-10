package com.gp.domainnews;

// Generated 26 sept. 2014 14:49:21 by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Societebareme generated by hbm2java
 */
@Entity
@Table(name = "societebareme", catalog = "gp")
public class Societebareme implements java.io.Serializable {

	private Integer societebaremeId;
	private Societe societe;
	private Bareme bareme;

	public Societebareme() {
	}

	public Societebareme(Societe societe, Bareme bareme) {
		this.societe = societe;
		this.bareme = bareme;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "societebaremeID", unique = true, nullable = false)
	public Integer getSocietebaremeId() {
		return this.societebaremeId;
	}

	public void setSocietebaremeId(Integer societebaremeId) {
		this.societebaremeId = societebaremeId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "societeID", nullable = false)
	public Societe getSociete() {
		return this.societe;
	}

	public void setSociete(Societe societe) {
		this.societe = societe;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "baremeID", nullable = false)
	public Bareme getBareme() {
		return this.bareme;
	}

	public void setBareme(Bareme bareme) {
		this.bareme = bareme;
	}

}
