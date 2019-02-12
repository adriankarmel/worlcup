package com.akarmel.worldcup.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.akarmel.worldcup.entity.Team;

@Repository
public class TeamDAOImpl implements TeamDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveTeam(Team theTeam) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/update the customer		
		currentSession.saveOrUpdate(theTeam);	
	}
	
	@Override
	public Team getTeam(int theId){
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		//now retrieve/read from database using the primary key
		Team theTeam = currentSession.get(Team.class, theId);		
		
		return theTeam;			
	}

	@Override
	public List<Team> getTeams() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Team> theQuery = currentSession.createQuery("FROM Team ORDER BY name", Team.class);
		
		// execute query and get result list
		List<Team> teams = theQuery.getResultList();
				
		// return the results				
		return teams;
	}
}