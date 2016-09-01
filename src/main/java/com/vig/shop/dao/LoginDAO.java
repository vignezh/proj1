package com.vig.shop.dao;

import com.vig.shop.model.Register;


public interface LoginDAO {

	public boolean checkUser(Register r);

	boolean checkUser(RegisterDAO r);

	

}
