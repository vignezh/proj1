package com.vig.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vig.shop.dao.RegisterDAO;
import com.vig.shop.model.UserBean;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	RegisterDAO registerDAO;

	@Override
	public void saveOrUpdate(UserBean userBean) {
		// TODO Auto-generated method stub
		registerDAO.saveOrUpdate(userBean);
	}

	@Override
	public UserBean getCustomerByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}
}
