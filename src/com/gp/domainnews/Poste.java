package com.gp.domainnews;

// Generated 26 sept. 2014 14:49:21 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Poste generated by hbm2java
 */
@Entity
@Table(name = "poste", catalog = "gp")
public class Poste implements java.io.Serializable {

	private Integer posteId;
	private Affectation affectation;
	private Date dateembauche;
	private Set<Salarie> salaries = new HashSet<Salarie>(0);

	public Poste() {
	}

	public Poste(Affectation affectation, Date dateembauche,
			Set<Salarie> salaries) {
		this.affectation = affectation;
		this.dateembauche = dateembauche;
		this.salaries = salaries;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "posteID", unique = true, nullable = false)
	public Integer getPosteId() {
		return this.posteId;
	}

	public void setPosteId(Integer posteId) {
		this.posteId = posteId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "affectationID")
	public Affectation getAffectation() {
		return this.affectation;
	}

	public void setAffectation(Affectation affectation) {
		this.affectation = affectation;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "dateembauche", length = 10)
	public Date getDateembauche() {
		return this.dateembauche;
	}

	public void setDateembauche(Date dateembauche) {
		this.dateembauche = dateembauche;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "poste")
	public Set<Salarie> getSalaries() {
		return this.salaries;
	}

	public void setSalaries(Set<Salarie> salaries) {
		this.salaries = salaries;
	}

}
