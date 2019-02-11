package com.akarmel.worldcup.service;

import java.util.List;

import com.akarmel.worldcup.entity.Group;

public interface GroupService {

	public void saveGroup(Group theGroup);
	
	public List<Group> getGroups();
}
