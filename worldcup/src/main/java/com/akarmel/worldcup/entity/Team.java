package com.akarmel.worldcup.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="team")
public class Team {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;	
	
	@Column(name="name")
	private String name;
	
	@OneToOne(cascade={CascadeType.PERSIST, 
			   CascadeType.MERGE,
			   CascadeType.DETACH,
			   CascadeType.REFRESH})
	@JoinColumn(name="group_id")	
	private Group groupetes;
	
	@OneToMany(mappedBy="teamA",			  
			   cascade={CascadeType.PERSIST, 
					   	CascadeType.MERGE,
					   	CascadeType.DETACH,
					   	CascadeType.REFRESH})	
	private List<Matches> matches;
	
	@OneToMany(mappedBy="teamB",			  
			   cascade={CascadeType.PERSIST, 
					   	CascadeType.MERGE,
					   	CascadeType.DETACH,
					   	CascadeType.REFRESH})	
	private List<Matches> matchesB;
	
	@Column(name="flag_path")
	private String flagPath;
	
	public Team() {		
	}

	public Team(int id, String name, String flagPath) {		
		this.id = id;
		this.name = name;
		this.flagPath = flagPath;
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

	public Group getGroupetes() {
		return groupetes;
	}

	public void setGroupetes(Group groupetes) {
		this.groupetes = groupetes;
	}

	public List<Matches> getMatches() {
		return matches;
	}

	public void setMatches(List<Matches> matches) {
		this.matches = matches;
	}
	
	public List<Matches> getMatchesB() {
		return matchesB;
	}

	public void setMatchesB(List<Matches> matchesB) {
		this.matchesB = matchesB;
	}

	@Override
	public String toString() {
		return "Team [id=" + id + ", name=" + name + ", groupetes=" + groupetes + ", matches=" + matches + ", matchesB="
				+ matchesB + ", flagPath=" + flagPath + "]";
	}
}