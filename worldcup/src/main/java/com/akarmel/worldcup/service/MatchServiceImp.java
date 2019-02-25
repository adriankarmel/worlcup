package com.akarmel.worldcup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.akarmel.worldcup.dao.MatchDAO;
import com.akarmel.worldcup.entity.Matches;

@Service
public class MatchServiceImp implements MatchService {

	@Autowired
	private MatchDAO MatchDAO;	
	
	@Override
	@Transactional
	public void saveMatch(Matches theMatch) {
		MatchDAO.saveMatch
		(theMatch);
	}

	@Override
	@Transactional
	public List<Matches> getMatch(String theYear) {
		return MatchDAO.getMatch(theYear);
	}

	@Override
	@Transactional
	public Matches getMatch(int theId) {
		return MatchDAO.getMatch(theId);
	}
}