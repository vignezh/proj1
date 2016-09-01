package com.vig.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vig.shop.dao.CategoryDAO;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
	@Autowired(required = true)
	private CategoryDAO categorydao;

	public List getAllcategory() {
		return categorydao.getAllcategory();
	}

}
