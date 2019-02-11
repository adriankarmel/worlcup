package com.akarmel.worldcup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.akarmel.worldcup.entity.Matches;
import com.akarmel.worldcup.entity.Team;
import com.akarmel.worldcup.service.MatchesService;
import com.akarmel.worldcup.service.TeamService;

@Controller
@RequestMapping("/matches")
public class MatchesController {
	@Autowired
	private MatchesService matchesService;
	
	@Autowired
	private TeamService teamService;
	
	@GetMapping("/list")
	public String getMatches(Model theModel) {		
		
	/*	List<Team> theTeam = teamService.getTeams();
		theModel.addAttribute("teamA", theTeam);		
		theModel.addAttribute("teamB", theTeam);		
	*/	
		
		List<Matches> theMatches = matchesService.getMatches();		
		theModel.addAttribute("matches", theMatches);		
		
		return "matches";
	}
	
	@GetMapping("/new")
	public String getNewMatch(Model theModel) {	
		
		List<Team> theTeam = teamService.getTeams();
		theModel.addAttribute("team_a", theTeam);	
			
		theModel.addAttribute("match", new Matches());
		
		return "match";
	}
	
	@PostMapping("/saveMatch")
	public String saveMatch(@ModelAttribute("match") Matches theMatch) {
		
		matchesService.saveMatches(theMatch);
		return "redirect:/matches/list";
	}	
}