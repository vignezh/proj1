package com.vig.shop.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.vig.shop.service.RegisterService;

@Component
public class DemoHandler {

	@Autowired(required = true)
	RegisterService rs;

	public UserBean initFlow() {
		return new UserBean();
	}

	public String validateDetails(UserBean userBean, MessageContext messageContext) {

		String status = "success";
		if (userBean.getUserId().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("userId").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if (userBean.getEmail().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if (userBean.getAge() == null) {
			messageContext.addMessage(new MessageBuilder().error().source("age").defaultText("Age cannot be Empty").build());
			status = "failure";
		}
		if (userBean.getPass().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("pass").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if (userBean.getMobile().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mobile").defaultText("Contact cannot be Empty").build());
			status = "failure";
		}
		rs.saveOrUpdate(userBean);
		return status;
	}

}
