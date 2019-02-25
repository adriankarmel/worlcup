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
	
	@GetMapping("/list")
	public String getMatch(@RequestParam("year") String theYear, Model theModel) {		
		
		/*
		 * List<Team> theTeam = teamService.getTeams();
		 * theModel.addAttribute("theTeam_a", theTeam);
		 * theModel.addAttribute("theTeam_b", theTeam);
		 */
		
		List<Matches> theMatch = matchService.getMatch(theYear);		
		theModel.addAttribute("matches", theMatch);		
		
		return "matches";
	}
		
	@GetMapping("/Update")
	public String showFormForUpdate(@RequestParam("year") String theYear,
									@RequestParam("matchId") int theId,
									Model theModel) {										
 
		int TeamId = 0;
		Matches theMatch = matchService.getMatch(theId);	
		theModel.addAttribute("match", theMatch);
		
		List<Team> theTeam = teamService.getTeams(theYear, TeamId);
		theModel.addAttribute("theTeam_a", theTeam);		
		theModel.addAttribute("theTeam_b", theTeam);		
					
		return "match";										
	}	
	
	@GetMapping("/new")
	public String getNewMatch(Model theModel) {			
		int TeamId = 0;
		List<Team> theTeam = teamService.getTeams(Constant.WORLD_CUP_YEAR_DEFAULT, TeamId);
		theModel.addAttribute("theTeam_a", theTeam);		
		theModel.addAttribute("theTeam_b", theTeam);		
		
		theModel.addAttribute("match", new Matches());
		
		System.out.println("new aaa");
		
		return "match";
	}
	
	@PostMapping("/saveMatch")	
	public String saveMatch(@ModelAttribute("match") Matches theMatch) {
		
		matchService.saveMatch(theMatch);
		
		return "redirect:/match/list";
	}	
}