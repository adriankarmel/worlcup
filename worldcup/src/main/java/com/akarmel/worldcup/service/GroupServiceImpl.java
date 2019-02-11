package com.akarmel.worldcup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.akarmel.worldcup.dao.GroupDAO;
import com.akarmel.worldcup.entity.Group;

@Service
public class GroupServiceImpl implements GroupService {
	
	@Autowired
	private GroupDAO GroupDAO;	

	@Override
	@Transactional
	public void saveGroup(Group theGroup) {		
		GroupDAO.saveGroup(theGroup);
	}

	@Override
	@Transactional
	public List<Group> getGroups() {
		return GroupDAO.getGroups();
	}
}