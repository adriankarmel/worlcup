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
import com.akarmel.worldcup.entity.Team;
import com.akarmel.worldcup.service.GroupService;
import com.akarmel.worldcup.service.TeamService;
import com.akarmel.worldcup.util.Constant;

@Controller
@RequestMapping("/team")
public class TeamController {
	
	@Autowired
	private TeamService teamService;
	
	@Autowired
	private GroupService groupService;	
	
	@GetMapping("/2022")
	public String showPage(Model theModel) {		
		
		int TeamId = 0;
		List<Team> theTeam = teamService.getTeams(Constant.YEAR_2022, TeamId);
		
		theModel.addAttribute("teams", theTeam);		
		
		return "teams";
	}
		
	@GetMapping("/Update")
	public String showFormForUpdate(@RequestParam("teamId") int theId,
									Model theModel) {										

		List<Group> theGroup = groupService.getGroups();
		theModel.addAttribute("theGroup", theGroup);										

		Team theTeam = teamService.getTeam(theId);	
		theModel.addAttribute("team", theTeam);

		return "team";										
	}	
	
	@GetMapping("/new")
	public String getNewTeam(Model theModel) {			
	
		List<Group> theGroup = groupService.getGroups();
		theModel.addAttribute("theGroup", theGroup);		
		
		theModel.addAttribute("team", new Team());
		
		return "team";
	}	
	
	@PostMapping("/saveTeam")
	public String saveTeam(@ModelAttribute("team") Team theTeam) {
		
		teamService.saveTeam(theTeam);
		
		return "redirect:/team/list?year=" + Constant.YEAR_2022;
	}	
	
	@GetMapping("/2018")
	public String showPage( @RequestParam("teamId") int theTeamId, Model theModel) {		
		
		List<Team> theTeam = teamService.getTeams(Constant.YEAR_2018, theTeamId);	
		
		return "fixture";
	}
	
	@GetMapping("/Delete")
	public String deleteTeam(@RequestParam("teamId") int theId,
									Model theModel) {										

		Team theTeam = teamService.deleteTeam(theId);	
		theModel.addAttribute("team", theTeam);

		return "team";										
	}	
}