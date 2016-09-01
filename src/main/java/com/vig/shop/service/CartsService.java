package com.vig.shop.service;

import com.vig.shop.model.UserBean;

import java.util.List;

public interface CartsService {

	void addCustomer(UserBean customer);

	UserBean getCustomerById(int customerId);

	List<UserBean> getAllCustomers();

	UserBean getCustomerByUsername(String username);

}
