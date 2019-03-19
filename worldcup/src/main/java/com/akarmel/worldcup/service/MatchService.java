package com.akarmel.worldcup.service;

import java.util.List;

import com.akarmel.worldcup.entity.Matches;
import com.akarmel.worldcup.util.Constant;

public interface MatchService {
	
	public void saveMatch(Matches theMatch);
	
	public List<Matches> getMatch(String theYear);
	
	public Matches getMatch(int theId);	
	
	public List<Matches> getTeamInMatches(int theId, String theYear);

}
