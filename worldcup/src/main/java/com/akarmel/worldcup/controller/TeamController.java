package com.akarmel.worldcup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.akarmel.worldcup.entity.Group;
import com.akarmel.worldcup.entity.Matches;
import com.akarmel.worldcup.entity.Team;
import com.akarmel.worldcup.service.GroupService;
import com.akarmel.worldcup.service.TeamService;

@Controller
@RequestMapping("/team")
public class TeamController {
	
	@Autowired
	private TeamService teamService;
	
	@Autowired
	private GroupService groupService;	
	
	@GetMapping("/list")
	public String showPage(Model theModel) {
		List<Team> theTeam = teamService.getTeams();
		
		theModel.addAttribute("teams", theTeam);		
		
		return "teams";
	}
	
	@GetMapping("/Update")
	public String showFormForUpdate(@RequestParam("teamId") int theId,
									Model theModel) {										

		List<Group> theGroup = groupService.getGroups();
		theModel.addAttribute("grupos", theGroup);										

		Team theTeam = teamService.getTeam(theId);	
		theModel.addAttribute("team", theTeam);

		return "team";										
	}	
	
	@GetMapping("/new")
	public String getNewTeam(Model theModel) {			
	
		theModel.addAttribute("match", new Team());
		
		return "team";
	}	
	
	@PostMapping("/saveTeam")
	public String saveTeam(@ModelAttribute("team") Team theTeam) {
		
		teamService.saveTeam(theTeam);
		
		return "redirect:/team/list";
	}	
}