package com.vig.shop.service;

import com.vig.shop.model.UserBean;

public interface RegisterService {

	public void saveOrUpdate(UserBean userBean);

	public UserBean getCustomerByUsername(String username);

}
