package com.vig.shop.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vig.shop.model.Product;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {

	@Autowired(required=true)
	private SessionFactory session;

	@Override
	public void save(Product product) {
		session.getCurrentSession().save(product);
	}

	@Override
	public void update(Product product) {
		session.getCurrentSession().update(product);
	}

	@Override
	public void delete(String productId) {
		session.getCurrentSession().delete(getProduct(productId));
	}

	@Override
	public Product getProduct(String productId) {
		return (Product) session.getCurrentSession().get(Product.class, productId);
	}

	@Override
	public List getAllproduct() {
		return session.getCurrentSession().createQuery("from PRODUCT").list();
	}

	@Override
	public List getFormals() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUCT where category='Formals'").list();
	}

	@Override
	public List getCasuals() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUCT where category='Casuals'").list();

	}

	@Override
	public List getSports() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from PRODUCT where category='Sports'").list();
	}

	/*
	 * public void save(Product product) {
	 * session.getCurrentSession().save(product); }
	 * 
	 * public void update(Product product) {
	 * session.getCurrentSession().update(product); }
	 * 
	 * public void delete(String productId) {
	 * session.getCurrentSession().delete(getProduct(productId));
	 * 
	 * }
	 * 
	 * public Product getProduct(String productId) { return (Product)
	 * session.getCurrentSession().get(Product.class, productId);
	 * 
	 * }
	 * 
	 * public List getAllproduct() { return
	 * session.getCurrentSession().createQuery("from Product").list(); }
	 */

}
