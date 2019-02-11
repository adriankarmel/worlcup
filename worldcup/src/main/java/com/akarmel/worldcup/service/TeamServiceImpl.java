package com.akarmel.worldcup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.akarmel.worldcup.dao.TeamDAO;
import com.akarmel.worldcup.entity.Team;

@Service
public class TeamServiceImpl implements TeamService {
	
	@Autowired
	private TeamDAO TeamDAO;	

	@Override
	@Transactional
	public void saveTeam(Team theTeam) {		
		TeamDAO.saveTeam(theTeam);
	}

	@Override
	@Transactional
	public Team getTeam(int theId) {
		return TeamDAO.getTeam(theId);
	}
	
	@Override
	@Transactional
	public List<Team> getTeams() {
		return TeamDAO.getTeams();
	}	
}