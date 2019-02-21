package com.akarmel.worldcup.service;

import java.util.List;

import com.akarmel.worldcup.entity.Matches;

public interface MatchService {
	
	public void saveMatch(Matches theMatch);
	
	public List<Matches> getMatch();
	
	public Matches getMatch(int theId);	

}
