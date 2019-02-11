package com.akarmel.worldcup.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.akarmel.worldcup.entity.Group;

@Repository
public class GroupDAOImpl implements GroupDAO {

	// need to inject the session factory	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveGroup(Group theGroup) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/update the customer		
		currentSession.saveOrUpdate(theGroup);	
	}

	@Override
	public List<Group> getGroups() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query
		Query<Group> theQuery = currentSession.createQuery("FROM Group ORDER BY name", Group.class);
		
		// execute query and get result list
		List<Group> groups = theQuery.getResultList();
				
		// return the results				
		return groups;
	}
}