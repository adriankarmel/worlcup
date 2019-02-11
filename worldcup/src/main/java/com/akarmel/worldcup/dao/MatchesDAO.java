package com.akarmel.worldcup.dao;

import java.util.List;

import com.akarmel.worldcup.entity.Matches;

public interface MatchesDAO {
	
	public void saveMatches(Matches theMatches);
	
	public List<Matches> getMatches();

	public Matches getMatches(int theId);

}
