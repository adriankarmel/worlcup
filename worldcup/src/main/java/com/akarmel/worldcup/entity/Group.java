package com.akarmel.worldcup.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="groupo")
public class Group {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;	
	
	@Column(name="name")
	private String name;
	
	@OneToMany(mappedBy="groupetes",			  
			   cascade={CascadeType.PERSIST, 
					   	CascadeType.MERGE,
					   	CascadeType.DETACH,
					   	CascadeType.REFRESH})	
	private List<Team> team;
	
	public Group() {		
	}
	
	public Group(int id, String name, String nombre) {
		this.name = name;
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

	public List<Team> getTeam() {
		return team;
	}

	public void setTeam(List<Team> team) {
		this.team = team;
	}

	@Override
	public String toString() {
		return "Group [id=" + id + ", name=" + name +  "]";
	}
}