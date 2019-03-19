package com.akarmel.worldcup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.akarmel.worldcup.entity.Matches;
import com.akarmel.worldcup.entity.Team;
import com.akarmel.worldcup.service.MatchService;
import com.akarmel.worldcup.service.TeamService;
import com.akarmel.worldcup.util.Constant;

@Controller
@RequestMapping("/view")
public class ViewController {

	@Autowired
	private TeamService teamService;

	@Autowired
	private MatchService matchService;

	@GetMapping("/team")
	public String showTeams(Model theModel) {

		 List<Team> theTeam = teamService.getTeams(Constant.YEAR_2022, 0);
		 theModel.addAttribute("teams", theTeam);
		
		return "view-team";
	}
	
	@GetMapping("/match")
	public String showMatches(Model theModel) {

		List<Matches> theMatch = matchService.getMatch(Constant.YEAR_2022);
		theModel.addAttribute("matches", theMatch);
		

		return "view-match";
	}
	
	@GetMapping("/matches")
	public String showTeamInMatches(@RequestParam("teamId") int theTeamId, Model theModel) {

		List<Matches> theMatch = matchService.getTeamInMatches(theTeamId, Constant.YEAR_2022);
		theModel.addAttribute("matches", theMatch);

		return "view-match";
	}
	
	@GetMapping("/table")
	public String showTable(Model theModel) {

		List<Team> theTeam = teamService.getTeams(Constant.YEAR_2022, 0);
		theModel.addAttribute("teams", theTeam);
		
		return "view-table";
	}
}