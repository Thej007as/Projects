package ipl_auction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ipl_auction.dao.ManagementDao;
import ipl_auction.dto.Management;

@Controller
public class ManagementController {

	@Autowired
	ManagementDao dao;

	@PostMapping("managementsignup")
	public ModelAndView saveManagement(@ModelAttribute Management management) {
		dao.save(management);
		ModelAndView view = new ModelAndView("index.jsp");
		view.addObject("msg", "Management Account got Created");
		return view;
	}

	@PostMapping("managementlogin")
	public ModelAndView loginManagement(@RequestParam String username, @RequestParam String password) {
		ModelAndView andView = new ModelAndView();

		Management management = dao.login(username);
		if (management == null) {
			andView.setViewName("managementlogin.jsp");
			andView.addObject("msg", "Invalid username");
		} else {
			if (management.getPassword().equals(password)) {
				andView.setViewName("managementhome.jsp");
				andView.addObject("msg", "Login Success");
			} else {
				andView.setViewName("managementlogin.jsp");
				andView.addObject("msg", "Invalid password");
			}
		}
		return andView;
	}
}
