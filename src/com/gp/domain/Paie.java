package com.gp.domain;

// Generated 14 sept. 2014 16:09:18 by Hibernate Tools 3.4.0.CR1

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

/**
 * Paie generated by hbm2java
 */
@Entity
@Table(name = "paie", catalog = "gp")
public class Paie implements java.io.Serializable {

	private Integer paieId;
	private String modepayement;
	private Float salairebrute;
	private Float salairedebase;
	private Set<Salarie> salaries = new HashSet<Salarie>(0);

	public Paie() {
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "La paie : ----------------\n"+
				"Mode de payement : "+this.modepayement+"\nSalaire brute : "+this.salairebrute+
				"\n salaire de base : "+this.salairedebase+"\n-----------------------------------\n";
	}
	public Paie(String modepayement, Float salairebrute, Float salairedebase,
			Set<Salarie> salaries) {
		this.modepayement = modepayement;
		this.salairebrute = salairebrute;
		this.salairedebase = salairedebase;
		this.salaries = salaries;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "paieID", unique = true, nullable = false)
	public Integer getPaieId() {
		return this.paieId;
	}

	public void setPaieId(Integer paieId) {
		this.paieId = paieId;
	}

	@Column(name = "modepayement")
	public String getModepayement() {
		return this.modepayement;
	}

	public void setModepayement(String modepayement) {
		this.modepayement = modepayement;
	}

	@Column(name = "salairebrute", precision = 12, scale = 0)
	public Float getSalairebrute() {
		return this.salairebrute;
	}

	public void setSalairebrute(Float salairebrute) {
		this.salairebrute = salairebrute;
	}

	@Column(name = "salairedebase", precision = 12, scale = 0)
	public Float getSalairedebase() {
		return this.salairedebase;
	}

	public void setSalairedebase(Float salairedebase) {
		this.salairedebase = salairedebase;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "paie")
	public Set<Salarie> getSalaries() {
		return this.salaries;
	}

	public void setSalaries(Set<Salarie> salaries) {
		this.salaries = salaries;
	}

}
