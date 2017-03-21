package com.niit.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

public class ProductTestCase {

	@Autowired
	Product product;

	@Autowired
	ProductDao pdao;

	@Before
	public void init() {

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("E:/Java_Code/project1/src/main/webapp/WEB-INF/applicationContext.xml");

		context.refresh();

		product = (Product) context.getBean("product");

		pdao = (ProductDao) context.getBean("productDaoImpl");
		System.out.println(pdao);

	}

	@Test
	public void saveProduct() {
		product.setName("sample");
		product.setPrice(2000);
		boolean flag = pdao.saveProduct(product);

		assertEquals(true, flag);

	}

}
