package com.vig.shop.controller;

import com.vig.shop.model.UserBean;
import com.vig.shop.service.RegisterService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer/cart")
public class CartController {

    @Autowired
    private RegisterService regserv;

    @RequestMapping
    public String getCart(@AuthenticationPrincipal User activeUser){
        UserBean customer = regserv.getCustomerByUsername(activeUser.getUsername());
     System.out.println("success");
     return "redirect:/customer/viewprod";
     //   return "redirect:/customer/cart/" + cartId;
    }

    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
        model.addAttribute("cartId", cartId);

        return "cart";
    }

}
