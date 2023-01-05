package ipl_auction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.dao.PlayerDao;
import ipl_auction.dao.TeamDao;
import ipl_auction.dto.Player;
import ipl_auction.dto.Team;

@org.springframework.stereotype.Controller
public class TeamController {
	@Autowired
	TeamDao dao;
	
	@Autowired
	PlayerDao dao2;

	@PostMapping("teamsignup")
	public ModelAndView saveManagement(@ModelAttribute Team team) {
		dao.save(team);
		ModelAndView view = new ModelAndView("index.jsp");
		view.addObject("msg", "Team Account got Created");
		return view;
	}

	@PostMapping("teamlogin")
	public ModelAndView loginManagement(@RequestParam String username, @RequestParam String password,HttpSession session) {
		ModelAndView andView = new ModelAndView();

		Team team = dao.login(username);
		if (team == null) {
			andView.setViewName("teamlogin.jsp");
			andView.addObject("msg", "Invalid username");
		} else {
			if (team.getPassword().equals(password)) {
				if(team.isStatus())
				{
				session.setAttribute("team", team);
				andView.setViewName("teamhome.jsp");
				andView.addObject("img",team.getImagelink());
				andView.addObject("msg", "Login Success");
				}
				else {
					andView.setViewName("teamlogin.jsp");
					andView.addObject("msg", "Contact Management for Access");
				}
			} else {
				andView.setViewName("teamlogin.jsp");
				andView.addObject("msg", "Invalid password");
			}
		}
		return andView;
	}
	
	@GetMapping("viewallteam")
	public ModelAndView viewAllTeam()
	{
		ModelAndView andView=new ModelAndView();
		List<Team> teams=dao.getAllTeam();
		if(teams.isEmpty())
		{
			andView.setViewName("managementhome.jsp");
			
			andView.addObject("msg","There are No Teams Present");
			return andView;
		}
		else {
			andView.setViewName("viewallteam.jsp");
			andView.addObject("teams",teams);
			return andView;
		}
	}
	
	@RequestMapping("changestatus")
	public String changeStatus(@RequestParam int id) {
		Team team=dao.findById(id);
		if(team.isStatus())
		{
			team.setStatus(false);
		}
		else
			team.setStatus(true);
		dao.update(team);
		return "viewallteam";
	}
	
	@RequestMapping("addamount")
	public String addamount(@RequestParam double amount,@RequestParam int id) {
		Team team=dao.findById(id);
		team.setWallet(team.getWallet()+amount);
		dao.update(team);
		return "viewallteam";
	}
	
	@RequestMapping("buyplayer")
	public ModelAndView buyPlayer(@RequestParam int id,HttpSession session)
	{
		ModelAndView andView=new ModelAndView();
		Team team=(Team) session.getAttribute("team");
		Player player=dao2.getPlayerById(id);
		if(player.getPrice()>team.getWallet())
		{
			andView.addObject("msg","Insufficient Funds");
			andView.addObject("img",team.getImagelink());
			andView.setViewName("teamhome.jsp");
		}
		else {
			team.setWallet(team.getWallet()-player.getPrice());
			player.setStatus("Sold");
			player.setTeam(team);
			List<Player> players=team.getPlayers();
			players.add(player);
			team.setPlayers(players);
			
			dao.update(team);
			dao2.updatePlayer(player);
			
			andView.addObject("msg","Player bought Successfully");
			andView.addObject("img",team.getImagelink());
			andView.setViewName("teamhome.jsp");
		}
		return andView;
	}
	
	@RequestMapping("viewteam")
	public ModelAndView viewplayers(HttpSession session)
	{
		Team team=(Team) session.getAttribute("team");
		ModelAndView andView=new ModelAndView();
		List<Player> players=team.getPlayers();
		if(players.isEmpty())
		{
			andView.setViewName("viewmyteam.jsp");
			andView.addObject("teamname",team.getName());
			andView.addObject("msg","No Players are there");
			return andView;
		}
		else {
			andView.setViewName("viewmyteam.jsp");
			andView.addObject("teamname",team.getName());
			andView.addObject("players",players);
			return andView;
		}
	}
	
	@RequestMapping("teamhomedummy")
	public ModelAndView dummy(HttpSession session)
	{
		Team team=(Team) session.getAttribute("team");
		ModelAndView andView=new ModelAndView("teamhome.jsp");
		andView.addObject("img",team.getImagelink());
		return andView;
	}
	
	@RequestMapping("viewteambyname")
	public ModelAndView viewTeamByName()
	{
		ModelAndView andView=new ModelAndView();
		List<Team> teams=dao.getAllTeam();
		
			andView.setViewName("viewteambyname.jsp");
			andView.addObject("teams",teams);
			return andView;
	}
	
	@RequestMapping("fetchusingteam")
	public ModelAndView fetchTeambyName(@RequestParam String name)
	{
		ModelAndView andView=new ModelAndView();
		List<Team> teams=dao.getAllTeamByName(name);
		Team team=teams.get(0);
		List<Player> players=team.getPlayers();
		andView.setViewName("viewmyteam.jsp");
		andView.addObject("players",players);
		return andView;	
		}
}
