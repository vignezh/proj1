package com.vig.shop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vig.shop.dao.LoginDAO;
import com.vig.shop.model.Register;

@Repository
@Transactional
public class LoginDAOImpl implements LoginDAO {

	@Autowired(required = true)
	private SessionFactory sessionFactory;

	@Override
	public boolean checkUser(Register r) {
		boolean isvaliduser = false;

		Query q = sessionFactory.openSession().createQuery("from UserDetails where user_firstname= '"
				+ r.getUser_firstname() + "' and password='" + r.getPassword() + "'");
		sessionFactory.getCurrentSession().saveOrUpdate(r);
		List<Register> ul = q.list();
		int s = ul.size();
		if (s == 1) {
			isvaliduser = true;
		}

		return isvaliduser;
	}

	@Override
	public boolean checkUser(com.vig.shop.dao.RegisterDAO r) {
		// TODO Auto-generated method stub
		return false;
	}

}
