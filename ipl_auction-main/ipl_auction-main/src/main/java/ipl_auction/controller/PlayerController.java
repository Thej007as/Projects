package ipl_auction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.dao.PlayerDao;
import ipl_auction.dao.TeamDao;
import ipl_auction.dto.Player;
import ipl_auction.dto.Team;

@Controller
public class PlayerController {
	@Autowired
	PlayerDao dao;
	
	@Autowired
	TeamDao dao2;

	@PostMapping("playersignup")
	public ModelAndView saveManagement(@ModelAttribute Player player) {
		player.setStatus("Pending");
		dao.save(player);
		ModelAndView view = new ModelAndView("index.jsp");
		view.addObject("msg", "Player Account got Created");
		return view;
	}

	@PostMapping("playerlogin")
	public ModelAndView loginPlayer(@RequestParam String username, @RequestParam String password,HttpSession session) {
		ModelAndView andView = new ModelAndView();

		Player player = dao.login(username);
		if (player == null) {
			andView.setViewName("playerlogin.jsp");
			andView.addObject("msg", "Invalid username");
		} else {
			session.setAttribute("player", player);
			if (player.getPassword().equals(password)) {
				andView.setViewName("playerhome.jsp");
				andView.addObject("msg", "Login Success");
			} else {
				andView.setViewName("playerlogin.jsp");
				andView.addObject("msg", "Invalid password");
			}
		}
		return andView;
	}
	
	@RequestMapping("viewplayers")
	public ModelAndView viewplayer(@RequestParam("id") int teamid)
	{
		ModelAndView andView=new ModelAndView();
		Team team=dao2.findById(teamid);
		List<Player> players=team.getPlayers();
		if(players.isEmpty())
		{
			andView.setViewName("viewteamplayer.jsp");
			andView.addObject("teamname",team.getName());
			andView.addObject("msg","No Players are there");
			return andView;
		}
		else {
			andView.setViewName("viewteamplayer.jsp");
			andView.addObject("teamname",team.getName());
			andView.addObject("players",players);
			return andView;
		}
	}
	
	@RequestMapping("viewallplayers")
	public ModelAndView viewAllplayers()
	{
		ModelAndView andView=new ModelAndView();
		List<Player> players=dao.getAllPlayers();
		if(players.isEmpty())
		{
			andView.setViewName("managementhome.jsp");
			andView.addObject("msg","There are No Players Present");
			return andView;
		}
		else {
			andView.setViewName("viewallplayers.jsp");
			andView.addObject("players",players);
			return andView;
		}
	}
	
	@RequestMapping("changeplayerstatus")
	public String changestatus(@RequestParam int id)
	{
		
		Player player=dao.getPlayerById(id);
		String status=player.getStatus();
		if(status.equals("Pending"))
		{
			player.setStatus("Available");
		}
		else if(status.equals("Available"))
		{
			player.setStatus("Pending");
		}
		else {
			
		}
		
		dao.updatePlayer(player);
		return "viewallplayers";
	}
	
	@RequestMapping("viewavailable")
	public ModelAndView viewAvailable(HttpSession session)
	{
		Team team=(Team)session.getAttribute("team");
		ModelAndView andView=new ModelAndView();
		List<Player> players=dao.getAvailbalePlayers();
		if(players.isEmpty())
		{
			andView.setViewName("teamhome.jsp");
			andView.addObject("msg","There are No Players Present");
			andView.addObject("img",team.getImagelink());
			return andView;
		}
		else {
			andView.setViewName("buyplayers.jsp");
			andView.addObject("players",players);
			return andView;
		}
	}
	
	@RequestMapping("viewplayerteam")
	public ModelAndView viewplayerteam(HttpSession session)
	{
		ModelAndView andView=new ModelAndView();
		Player player=(Player) session.getAttribute("player");
		Team team=player.getTeam();
		List<Player> players=team.getPlayers();
		
		andView.setViewName("playerteam.jsp");
		andView.addObject("players",players);
		return andView;
	}
	
	@RequestMapping("editplayer")
	public ModelAndView editPlayer(HttpSession session)
	{
		Player player=(Player) session.getAttribute("player");
		ModelAndView andView=new ModelAndView("editplayer.jsp");
		andView.addObject("player",player);
		return andView;
	}
	
	@RequestMapping("updateplayer")
	public ModelAndView updatePlayer(@ModelAttribute Player player)
	{
		dao.updatePlayer(player);
		ModelAndView andView=new ModelAndView("playerhome.jsp");
		andView.addObject("msg","Data Updated Successfully");
		return andView;
		
	}
}
