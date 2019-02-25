package com.akarmel.worldcup.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.akarmel.worldcup.entity.Matches;

@Repository
public class MatchDAOImp implements MatchDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveMatch(Matches theMatch) {
		Session currentSession = sessionFactory.getCurrentSession();		
		currentSession.saveOrUpdate(theMatch);	
	}

	@Override
	public List<Matches> getMatch(String year) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Matches> theQuery = currentSession.createQuery("FROM Matches WHERE SUBSTRING(dia, 1, 4) = " + year + " ORDER BY id", Matches.class);
		
		// execute query and get result list
		List<Matches> match = theQuery.getResultList();
				
		// return the results				
		return match;
	}

	@Override
	public Matches getMatch(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
			
		Matches theMatch = currentSession.get(Matches.class, theId);		
		
		return theMatch;			
	}
}