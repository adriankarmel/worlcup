package com.akarmel.worldcup.service;

import java.util.List;

import com.akarmel.worldcup.entity.Team;

public interface TeamService {

	public void saveTeam(Team theTeam);
	
	public List<Team> getTeams(String Year, int TeamId);
	
	public Team getTeam(int theId);	
	
	public void deleteTeam(int theId);
}