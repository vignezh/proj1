package com.vig.shop.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vig.shop.model.Role;
import com.vig.shop.model.UserBean;

@Repository
@Transactional
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired(required = true)
	SessionFactory sf;

	/*
	 * @Override public void maddy(Register regs) { // TODO Auto-generated
	 * method stub sf.getCurrentSession().save(regs); }
	 */
	@Override
	public void saveOrUpdate(UserBean userBean) {
		userBean.setEnabled(true);
		Role r=new Role();
		r.setUb(userBean);
		r.setRole("ROLE_USER");
		sf.getCurrentSession().saveOrUpdate(r);
		sf.getCurrentSession().saveOrUpdate(userBean);
	}

	/*
	 * @Override public void saveOrUpdate(Register regs) { // TODO
	 * Auto-generated method stub sf.getCurrentSession().saveOrUpdate(regs); }
	 */
}
