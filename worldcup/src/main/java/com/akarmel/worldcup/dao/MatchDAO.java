package com.akarmel.worldcup.dao;

import java.util.List;

import com.akarmel.worldcup.entity.Matches;

public interface MatchDAO {
	
	public void saveMatch(Matches theMatch);
	
	public List<Matches> getMatch(String theYear);

	public Matches getMatch(int theId);

	public List<Matches> getTeamByMatch(int theId, String theYear);

}
