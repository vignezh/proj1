package com.vig.shop.dao;

import java.util.List;

import com.vig.shop.model.Product;

public interface ProductDAO {

	public void update(Product product);

	public void delete(String productId);

	public Product getProduct(String productId);

	public List getAllproduct();

	public void save(Product product);

	public List getFormals();

	public List getCasuals();

	public List getSports();

}
