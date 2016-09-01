package com.vig.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vig.shop.model.Register;
import com.vig.shop.service.RegisterService;

@Controller
public class HomeController {
	@Autowired
	RegisterService rs;

	@ModelAttribute("ion")
	public Register newuser() {
		return new Register();
	}

	@RequestMapping("/")
	public String index() {
		return "land";
	}
	
	@RequestMapping("/land")
	public String land() {
		return "land";
	}

	@RequestMapping(value = "/login")
	public String getlogin() {
		return "login";
	}

	@RequestMapping(value = "about")
	public String about() {
		return "about";
	}

	@RequestMapping(value = "Register")
	public String reg() {
		return "register";
	}

	@RequestMapping(value = "/viewprod")
	public String prod() {
		return "viewprod";
	}

	@RequestMapping(value = "fregister", method = RequestMethod.POST)

	public ModelAndView reg(@ModelAttribute("ion") Register regs) {
		ModelAndView mv = new ModelAndView("sign");

		return mv;
	}

}
