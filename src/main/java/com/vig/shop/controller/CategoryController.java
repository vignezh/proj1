package com.vig.shop.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vig.shop.model.Product;
import com.vig.shop.service.ProductService;

@Controller
public class CategoryController {
	@Autowired(required = true)
	ProductService ps;

	/*
	 * public String setCat() { return "category"; }
	 */
	@RequestMapping(value = "/formals")
	public String doActions(Map<String, Object> map) {
		Product productResult = new Product();
		map.put("product", productResult);
		map.put("productList", ps.getAllFormals());
		return "Category";
	}

	@RequestMapping(value = "/casuals")
	public String doActions1(Map<String, Object> map) {
		Product productResult = new Product();
		map.put("product", productResult);
		map.put("productList", ps.getAllCasuals());
		return "Category";
	}

	@RequestMapping(value = "/sports")
	public String doActions2(Map<String, Object> map) {
		Product productResult = new Product();
		map.put("product", productResult);
		map.put("productList", ps.getAllSports());
		return "Category";
	}

}