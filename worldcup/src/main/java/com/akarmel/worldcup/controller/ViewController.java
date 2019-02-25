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

@Controller
@RequestMapping("/view")
public class ViewController {

	@Autowired
	private TeamService teamService;

	@Autowired
	private MatchService matchService;

	@GetMapping("/team/2018")
	public String showTeams(Model theModel) {

		 List<Team> theTeam = teamService.getTeams("2018", 0);
		 theModel.addAttribute("teams", theTeam);
		
		return "view-team";
	}
	
	@GetMapping("/match/2018")
	public String showMatches(Model theModel) {

		List<Matches> theMatch = matchService.getMatch("2018");
		theModel.addAttribute("matches", theMatch);

		return "view-match";
	}
}