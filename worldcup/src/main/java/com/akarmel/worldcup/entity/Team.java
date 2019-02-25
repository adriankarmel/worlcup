package com.akarmel.worldcup.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="team")
public class Team {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;	
	
	@Column(name="name")
	private String name;
	
	@ManyToOne(cascade={CascadeType.PERSIST, 
			   CascadeType.MERGE,
			   CascadeType.DETACH,
			   CascadeType.REFRESH})
	@JoinColumn(name="group_id")	
	private Group grupete;
	
	@OneToMany(mappedBy="team_a",			  
			   cascade={CascadeType.PERSIST, 
					   	CascadeType.MERGE,
					   	CascadeType.DETACH,
					   	CascadeType.REFRESH})	
	private List<Matches> matchA;
	
	@OneToMany(mappedBy="team_b",			  
			   cascade={CascadeType.PERSIST, 
					   	CascadeType.MERGE,
					   	CascadeType.DETACH,
					   	CascadeType.REFRESH})	
	private List<Matches> matchB;
	
	@Column(name="flag_path")
	private String flagPath;
		
	@Column(name="year") 
    private String anio;
	
	public Team() {		
		this.flagPath = "noflag.png";
	}	

	public Team(int id, String name, Group grupete, List<Matches> matchA, List<Matches> matchB, String flagPath,
			String anio) {
		
		this.id = id;
		this.name = name;
		this.grupete = grupete;
		this.matchA = matchA;
		this.matchB = matchB;
		this.flagPath = flagPath;
		this.anio = anio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFlagPath() {
		return flagPath;
	}

	public void setFlagPath(String flagPath) {
		this.flagPath = flagPath;
	}	

	public Group getGrupete() {
		return grupete;
	}

	public void setGrupete(Group grupete) {
		this.grupete = grupete;
	}

	public List<Matches> getMatchA() {
		return matchA;
	}

	public void setMatchA(List<Matches> matchA) {
		this.matchA = matchA;
	}

	public List<Matches> getMatchB() {
		return matchB;
	}

	public void setMatchB(List<Matches> matchB) {
		this.matchB = matchB;
	}
	
	public String getAnio() {
		return anio;
	}

	public void setAnio(String anio) {
		this.anio = anio;
	}

	@Override
	public String toString() {
		return "Team [id=" + id + ", name=" + name + ", grupete=" + grupete + ", matchA=" + matchA + ", matchB="
				+ matchB + ", flagPath=" + flagPath + "]";
	}	
}