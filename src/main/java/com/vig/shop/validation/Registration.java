/*package com.vig.shop.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.vig.shop.model.UserBean;

@Component
public class Registration implements Validator {

	@Override
	public boolean supports(Class<?> c) {
		return UserBean.class.isAssignableFrom(c);
	}

	@Override
	public void validate(Object command, Errors errors) {
		UserBean usbe = (UserBean) command;
	//	if (!usbe.getPass().equals(usbe.getRepass()))
			errors.rejectValue("rePassword", "password.notmatch");
	}

}
*/