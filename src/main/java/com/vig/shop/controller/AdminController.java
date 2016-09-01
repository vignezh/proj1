/*package com.vig.shop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.vig.shop.model.Product;
import com.vig.shop.service.ProductService;
import com.vig.shop.validation.Registration;

@Controller(value = "product")
public class AdminController {
	@Autowired
	ProductService ps;

	@ModelAttribute("ob")
	public Product link() {
		return new Product();
	}

	
	@RequestMapping(value = { "/viewall", "admin/viewall" })
	public String prods(Map<String, Object> map) {
		Product productmodelResult = new Product();
		map.put("productModel", productmodelResult);
		map.put("productmodelList", ps.getAllproduct());

		return "Viewall";
	}

	@RequestMapping(value = "edit/{id}")
	public String edit(@PathVariable("id") String id, @ModelAttribute Product prodmod, Map<String, Object> map) {

		prodmod = ps.getproduct(id);
		map.put("productModel", prodmod);
		map.put("productmodelList", ps.getAllproduct());

		return "product";
	}

	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") String id, @ModelAttribute Product prodmod, Map<String, Object> map) {

		ps.delete(id);

		return "Viewall";
	}

	@RequestMapping(value = "/admin/product")
	public String prod() {
		return "product";
	}

	@RequestMapping(value = { "admin/productmodel" }, method = RequestMethod.POST)
	public String doActions(@ModelAttribute("ob") Product prodmod, BindingResult result, @RequestParam String action,
			Map<String, Object> map) {
		Product productmodelResult = new Product();
		switch (action.toLowerCase()) {
		case "add":
			MultipartFile file = prodmod.getFilename();

			if (!file.isEmpty()) {
				try {

					// Creating the directory to store file
					String rootPath = "F:/laptop/src/main/webapp/resources";
					File dir = new File(rootPath + File.separator + "admin/upload");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir + File.separator + prodmod.getImagename() + ".jpg");
					file.transferTo(serverFile);

				} catch (Exception e) {
					System.out.println(e.getMessage());
				}

			}
			
			ps.save(prodmod);
			productmodelResult = prodmod;
			break;

		case "edit":
			ps.update(prodmod);
			productmodelResult = prodmod;
			break;

		case "delete":
			ps.delete(prodmod.getProductId());
			productmodelResult = new Product();
			break;

		case "search":
			Product searchedProductModel = ps.getproduct(prodmod.getProductId());
			productmodelResult = searchedProductModel != null ? searchedProductModel : new Product();
			break;
		}
		// map.put("productModel",productmodelResult);
		// map.put("productmodelList", productservice.getAllProductModel());

		return "product";
	}

}
*/