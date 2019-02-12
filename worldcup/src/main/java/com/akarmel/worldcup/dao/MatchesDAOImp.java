package com.akarmel.worldcup.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.akarmel.worldcup.entity.Matches;
import com.akarmel.worldcup.entity.Team;

@Repository
public class MatchesDAOImp implements MatchesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveMatches(Matches theMatch) {
	
		Session currentSession = sessionFactory.getCurrentSession();		
		
		currentSession.saveOrUpdate(theMatch);	
	}

	@Override
	public List<Matches> getMatches() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Matches> theQuery = currentSession.createQuery("FROM Matches ORDER BY id", Matches.class);
		
		// execute query and get result list
		List<Matches> matches = theQuery.getResultList();
				
		// return the results				
		return matches;
	}

	@Override
	public Matches getMatches(int theId) {
		return null;
	}

}