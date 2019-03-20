package com.akarmel.worldcup.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.akarmel.worldcup.entity.Matches;
import com.akarmel.worldcup.entity.Team;
import com.akarmel.worldcup.util.Constant;

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

	@Override
	public List<Matches> getTeamByMatch(int theId, String theYear) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		String sSql = "  FROM Matches " + 
					  " WHERE SUBSTRING(dia, 1, 4) = " + theYear + 
					  "   AND (team_a_id = " + theId + 
					  "    OR  team_b_id = " + theId + ")" +
					  " ORDER BY id";
		
		// create a query
		Query<Matches> theQuery = currentSession.createQuery(sSql, Matches.class);
		
		// execute query and get result list
		List<Matches> match = theQuery.getResultList();
				
		// return the results				
		return match;
	}

	@Override
	public List<Matches> searchTeamByMatches(String theSearchName) {
		Session currentSession = sessionFactory.getCurrentSession();
        Query theQuery = null;

		String sSql = "  FROM Matches " + 
					  " WHERE SUBSTRING(dia, 1, 4) = " + Constant.YEAR_2022 + 
					  " ORDER BY id";
		
	      // only search by name if theSearchName is not empty        
        if (theSearchName != null && theSearchName.trim().length() > 0) {
        		sSql = "  FROM Matches " +
    				   " WHERE SUBSTRING(dia, 1, 4) = " + Constant.YEAR_2022 + 
					   "   AND (lower(Matches.team_a.name) like :theName " + 
					   "    OR  lower(Matches.team_b.name) like :theName )" +
					   " ORDER BY id";
        		System.out.println("sSql:" + sSql);
            	
            // search for firstName or lastName ... case insensitive
            theQuery = currentSession.createQuery(sSql, Matches.class);
            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
        }else {
    		System.out.println("ssw");
    		theQuery = currentSession.createQuery(sSql, Matches.class);            
        }
				
        List<Matches> match = theQuery.getResultList();
        
		// return the results				
		return match;
	}
}