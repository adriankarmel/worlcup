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

import com.akarmel.worldcup.entity.Matches;
import com.akarmel.worldcup.entity.Team;
import com.akarmel.worldcup.service.MatchService;
import com.akarmel.worldcup.service.TeamService;
import com.akarmel.worldcup.util.Constant;

@Controller
@RequestMapping("/match")
public class MatchController {
	
	@Autowired
	private MatchService matchService;
	
	@Autowired
	private TeamService teamService;
	
	@GetMapping("/2022")
	public String getMatch(Model theModel) {		
		
		List<Matches> theMatch = matchService.getMatch(Constant.YEAR_2022);		
		theModel.addAttribute("matches", theMatch);		
		
		return "matches";
	}
	
	
	@GetMapping("/2018")
	public String getMatch2018(Model theModel) {	
		
		List<Matches> theMatch = matchService.getMatch(Constant.YEAR_2018);		
		theModel.addAttribute("matches", theMatch);		
		
		return "matches-2018";
	}
		
	@GetMapping("/Update")
	public String showFormForUpdate(@RequestParam("matchId") int theId,
									Model theModel) {										
 
		int TeamId = 0;
		Matches theMatch = matchService.getMatch(theId);	
		theModel.addAttribute("match", theMatch);
		
		List<Team> theTeam = teamService.getTeams(Constant.YEAR_2022, TeamId);
		theModel.addAttribute("theTeam_a", theTeam);		
		theModel.addAttribute("theTeam_b", theTeam);		
					
		return "match";										
	}	
	
	@GetMapping("/new")
	public String getNewMatch(Model theModel) {			
		
		int TeamId = 0;
		
		List<Team> theTeam = teamService.getTeams(Constant.YEAR_2022, TeamId);
		theModel.addAttribute("theTeam_a", theTeam);		
		theModel.addAttribute("theTeam_b", theTeam);		
		
		theModel.addAttribute("match", new Matches());
		
		return "match";
	}
	
	@PostMapping("/saveMatch")	
	public String saveMatch(@ModelAttribute("match") Matches theMatch) {
		
		matchService.saveMatch(theMatch);
		
		return "redirect:/match/" + Constant.YEAR_2022;
		
	}	
	
}