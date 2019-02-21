package com.akarmel.worldcup.dao;

import java.util.List;

import com.akarmel.worldcup.entity.Matches;

public interface MatchDAO {
	
	public void saveMatch(Matches theMatch);
	
	public List<Matches> getMatch();

	public Matches getMatch(int theId);

}
