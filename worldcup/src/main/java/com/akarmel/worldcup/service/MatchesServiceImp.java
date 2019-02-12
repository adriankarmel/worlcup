package com.akarmel.worldcup.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.akarmel.worldcup.entity.Matches;

@Service
public class MatchesServiceImp implements MatchesService {

	@Override
	@Transactional
	public void saveMatches(Matches theMatches) {
		
	}

	@Override
	@Transactional
	public List<Matches> getMatches() {
		return null;
	}

	@Override
	@Transactional
	public Matches getMatches(int theId) {
		return null;
	}
}