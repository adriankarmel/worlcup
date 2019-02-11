package com.akarmel.worldcup.dao;

import java.util.List;

import com.akarmel.worldcup.entity.Group;

public interface GroupDAO {
	
	public void saveGroup(Group theGroup);
	
	public List<Group> getGroups();
	
}