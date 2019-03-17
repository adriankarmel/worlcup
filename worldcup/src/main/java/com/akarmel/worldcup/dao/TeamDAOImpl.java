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
	public List<Team> getTeams(String year, int teamId) {
		String sSql = "";
		Session currentSession = sessionFactory.getCurrentSession();
		
		if (teamId == 0) {
			sSql = "FROM Team WHERE year = " + year + " ORDER BY group_id ";
		}else {
			sSql = "FROM Team WHERE year = " + year + " AND (team_id_a = " + teamId + " OR team_id_b = " + teamId + " ORDER BY group_id ";			
		}
		System.out.println("sSql:" + sSql);
		Query<Team> theQuery = currentSession.createQuery(sSql, Team.class);
		
		// execute query and get result list
		List<Team> teams = theQuery.getResultList();
				
		// return the results				
		return teams;
	}

	@Override
	public void deleteTeam(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();

		String sSql = "DELETE Team WHERE id =" + theId;
		
		Query<Team> theQuery = currentSession.createQuery(sSql, Team.class);
		
		// execute query and get result list
		List<Team> teams = theQuery.getResultList();
		
	}
}