package com.vig.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vig.shop.dao.LoginDAO;
import com.vig.shop.model.Register;
import com.vig.shop.model.UserBean;
import com.vig.shop.model.UserDetails;
import com.vig.shop.service.LoginService;


	@Service
	@Transactional
	public class LoginServiceImpl implements LoginService {

		@Autowired(required=true)
		private LoginDAO ld;
		
		@Override
		public boolean checkUser(Register r) {
			boolean b=false;
			b=ld.checkUser(r);
			if(b==true){
				b=true;
			}
			return b;
		}
/*
		@Override
		public boolean checkUser(UserDetails u) {
			// TODO Auto-generated method stub
			return false;
		}*/

		@Override
		public boolean checkUser(UserBean ub) {
			// TODO Auto-generated method stub
			return false;
		}



	}

