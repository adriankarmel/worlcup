package com.akarmel.worldcup.service;

import java.util.List;

import com.akarmel.worldcup.entity.Matches;

public interface MatchesService {
	
	public void saveMatches(Matches theMatches);
	
	public List<Matches> getMatches();
	
	public Matches getMatches(int theId);	

}
