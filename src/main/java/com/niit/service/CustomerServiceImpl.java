package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CustomerDAO;
import com.niit.model.Address;
import com.niit.model.Cart;
import com.niit.model.CartProduct;
import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.Wishlist;
import com.niit.model.WishlistProduct;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	public int login(Customer customer) {
		int i = customerDAO.login(customer);
		return i;
	}

	@Override
	@Transactional
	public void addCustomer(Customer customer) {
		// TODO 自动生成的方法存根
		customerDAO.addCustomer(customer);
	}

	@Override
	@Transactional
	public List<Product> getAllProduct() {
		// TODO 自动生成的方法存根
		return customerDAO.getAllProduct();
	}

	@Override
	public void addtoCart(Cart cart) {
		// TODO 自动生成的方法存根
		customerDAO.addtoCart(cart);
	}

	@Override
	public List<CartProduct> getCart(String cname) {
		// TODO 自动生成的方法存根
		return customerDAO.getCart(cname);

	}

	@Override
	public void removeCart(int cartId) {
		// TODO 自动生成的方法存根
		customerDAO.removeCart(cartId);
	}

	@Override
	public void addtoWishlist(Wishlist wishlist) {
		// TODO 自动生成的方法存根
		customerDAO.addtoWishlist(wishlist);
	}

	@Override
	public List<WishlistProduct> getWishlist(String cname) {
		// TODO 自动生成的方法存根
		return customerDAO.getWishlist(cname);
	}

	@Override
	public void removeWish(int wid) {
		// TODO 自动生成的方法存根
		customerDAO.removeWish(wid);
	}

	@Override
	public List<Product> Search(String content) {
		// TODO 自动生成的方法存根
		return customerDAO.Search(content);
	}

	@Override
	public void addOrder(Order order) {
		// TODO 自动生成的方法存根
		customerDAO.addOrder(order);
	}

	@Override
	public void addMessage(Message message) {
		// TODO 自动生成的方法存根
		customerDAO.addMessage(message);
	}

	@Override
	public Address getAddress(String name) {
		// TODO 自动生成的方法存根
		return customerDAO.getAddress(name);
	}

	@Override
	public Customer getCustomer(String name) {
		// TODO 自动生成的方法存根
		return customerDAO.getCustomer(name);
	}

	@Override
	public List<Address> getAllAddress(String name) {
		// TODO 自动生成的方法存根
		return customerDAO.getAllAddress(name);
	}

	@Override
	public void deleteAddress(int id) {
		// TODO 自动生成的方法存根
		customerDAO.deleteAddress(id);
	}

	@Override
	public void addAddress(Address address) {
		// TODO 自动生成的方法存根
		customerDAO.addAddress(address);
	}

	@Override
	public Address updateAddress(Address address) {
		
		return customerDAO.updateAddress(address);
	}

	@Override
	public Address getAddress1(int id) {
		// TODO 自动生成的方法存根
		return customerDAO.getAddress1(id);
	}

	@Override
	public void blockAddress(int id) {
		// TODO 自动生成的方法存根
		customerDAO.blockAddress(id);
	}

	@Override
	public void activeAddress(int id) {
		// TODO 自动生成的方法存根
		customerDAO.activeAddress(id);
	}

	@Override
	public void placeOrder(Order ord) {
		// TODO 自动生成的方法存根
		customerDAO.placeOrder(ord);
	}

	@Override
	public List<Order> getOrder(String name) {
		// TODO 自动生成的方法存根
		return customerDAO.getOrder(name);
	}

	@Override
	public void paid(int id) {
		// TODO Auto-generated method stub
		customerDAO.paid(id);
	}

}
