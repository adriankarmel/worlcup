package com.akarmel.worldcup.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="matches")
public class Matches {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@ManyToOne(cascade={CascadeType.PERSIST, 
			   CascadeType.MERGE,
			   CascadeType.DETACH,
			   CascadeType.REFRESH})
	@JoinColumn(name="team_a_id")	
	private Team team_a;

    @Column(name="dia") 
    private String dia;
	  
    @Column(name="hora") 
    private String hora;
	 
	@OneToOne(cascade={CascadeType.PERSIST, 
			   CascadeType.MERGE,
			   CascadeType.DETACH,
			   CascadeType.REFRESH})
	@JoinColumn(name="team_b_id")	
	private Team team_b;
	
	@Column(name="result_A")
	private int result_A;
	
	@Column(name="result_B")
	private int result_B;
	
	public Matches() {		
	}	

	public Matches(int id, Team team_a, String dia, String hora, Team team_b, int result_A, int result_B) {
		this.team_a = team_a;
		this.dia = dia;
		this.hora = hora;
		this.team_b = team_b;
		this.result_A = result_A;
		this.result_B = result_B;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getHora() {
		return hora;
	}

	public void setHora(String hora) {
		this.hora = hora;
	}

	public int getResult_A() {
		return result_A;
	}
	
	public Team getTeam_a() {
		return team_a;
	}

	public void setTeam_a(Team team_a) {
		this.team_a = team_a;
	}

	public Team getTeam_b() {
		return team_b;
	}

	public void setTeam_b(Team team_b) {
		this.team_b = team_b;
	}

	public void setResult_A(int result_A) {
		this.result_A = result_A;
	}

	public int getResult_B() {
		return result_B;
	}

	public void setResult_B(int result_B) {
		this.result_B = result_B;
	}	
}