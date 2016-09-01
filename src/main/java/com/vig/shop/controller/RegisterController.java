package com.vig.shop.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vig.shop.dao.RegisterDAO;
import com.vig.shop.model.Register;

import com.vig.shop.service.RegisterService;

@Controller
public class RegisterController {
	@Autowired(required = true)
	Register regs;

	@Autowired
	RegisterDAO registerDAO;

	@Autowired
	RegisterService regser;

	@ModelAttribute("ion")
	public Register getob() {
		return new Register();
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("regs", regs);
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute Register regis, BindingResult result) {
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("register");
			return model;
		}
		// regser.saveOrUpdate(regis);
		ModelAndView mv = new ModelAndView("success");
		return mv;
	}
}
