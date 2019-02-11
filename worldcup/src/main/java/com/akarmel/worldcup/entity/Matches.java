package com.akarmel.worldcup.entity;

import java.sql.Time;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="matches")
public class Matches {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@OneToOne(cascade={CascadeType.PERSIST, 
			   CascadeType.MERGE,
			   CascadeType.DETACH,
			   CascadeType.REFRESH})
	@JoinColumn(name="team_a_id")	
	private Team teamA;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name="dia")
	private Date dia;
	
	//@Temporal(TemporalType.TIME)
	@DateTimeFormat(pattern = "HH:mm")
	@Column(name="hora")
	private Time hora; 
	
	@OneToOne(cascade={CascadeType.PERSIST, 
			   CascadeType.MERGE,
			   CascadeType.DETACH,
			   CascadeType.REFRESH})
	@JoinColumn(name="team_b_id")	
	private Team teamB;
	
	@Column(name="result_A")
	private int result_A;
	
	@Column(name="result_B")
	private int result_B;
	
	public Matches() {		
	}	

	public Matches(Date dia, Time hora) {
		this.dia = dia;
		this.hora = hora;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDia() {
		return dia;
	}
	
	public void setDia(Date dia) {
		this.dia = dia;
	}

	public Time getHora() {
		return hora;
	}

	public void setHora(Time hora) {
		this.hora = hora;
	}

	
	public Team getTeamA() {
		return teamA;
	}

	public void setTeamA(Team teamA) {
		this.teamA = teamA;
	}

	public Team getTeamB() {
		return teamB;
	}

	public void setTeamB(Team teamB) {
		this.teamB = teamB;
	}

		
	public int getResult_A() {
		return result_A;
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

	@Override
	public String toString() {
		return "Matches [id=" + id + ", teamA=" + teamA + ", dia=" + dia + ", hora=" + hora + ", teamB=" + teamB
				+ ", result_A=" + result_A + ", result_B=" + result_B + "]";
	}		
}
