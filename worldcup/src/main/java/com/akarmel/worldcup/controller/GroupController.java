package com.akarmel.worldcup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.akarmel.worldcup.entity.Group;
import com.akarmel.worldcup.service.GroupService;

@Controller
public class GroupController {
	
	@Autowired
	private GroupService groupService;
	
	@GetMapping("/list")
	public String showPage(Model theModel) {
		List<Group> theGroup = groupService.getGroups();
		
		theModel.addAttribute("group", theGroup);
		
		return "group";
	}
	
	@PostMapping("/saveGroup")
	public String saveTeam(@ModelAttribute("group") Group theGroup) {
		
		groupService.saveGroup(theGroup);
		return "redirect:/group/list";
	}	
}