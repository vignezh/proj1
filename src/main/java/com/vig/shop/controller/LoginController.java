package com.vig.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vig.shop.model.UserBean;
import com.vig.shop.service.LoginService;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginshow() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@Autowired(required = true)
	LoginService ls;

	@ModelAttribute("userform")
	public UserBean getob() {
		return new UserBean();
	}

	@RequestMapping(value = "/loginpage", method = RequestMethod.POST)
	public ModelAndView loginuser(@ModelAttribute UserBean ub) {
		boolean isvaliduser = false;

		String userId = null;
		ub.setUserId(userId);
		String pass = null;
		ub.setPass(pass);

		isvaliduser = ls.checkUser(ub);
		ModelAndView mv = null;
		if (isvaliduser == true) {
			mv = new ModelAndView("success");
			mv.addObject("msg", "Welcome");
			mv.addObject("name", ub.getUserId());
		}
		return mv;
	}

}
