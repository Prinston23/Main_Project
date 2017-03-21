package com.niit.dao;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.service.CartService;

@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	CartService cartService;

	public Cart getCart(int cartId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, cartId);
		session.close();
		return cart;
	}
	

	
	public Cart validate(int cartId) throws IOException
	{
		Cart cart=getCart(cartId);
		if(cart==null || cart.getCartItems().size()==0)
		{
			throw new IOException(cartId+"");
		}
		update(cart);
		return cart;
		
	}



	private void update(Cart cart) {
		int cartId=cart.getId();
		
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(cart);
		session.flush();
		session.close();
		
		
	}


	
	
	
	

}