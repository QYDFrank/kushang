package com.niit.service;

import java.util.List;

import com.niit.model.Address;
import com.niit.model.Cart;
import com.niit.model.CartProduct;
import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.Wishlist;
import com.niit.model.WishlistProduct;

public interface CustomerService {

	public int login(Customer customer);

	public void addCustomer(Customer customer);
	
	public List<Product> getAllProduct();

	public void addtoCart(Cart cart);

	public List<CartProduct> getCart(String name);

	public void removeCart(int cartId);

	public void addtoWishlist(Wishlist wishlist);

	public List<WishlistProduct> getWishlist(String name);

	public void removeWish(int wid);

	public List<Product> Search(String content);

	public void addOrder(Order order);

	public void addMessage(Message message);

	public Address getAddress(String name);

	public Customer getCustomer(String name);

	public List<Address> getAllAddress(String name);

	public void deleteAddress(int id);

	public void addAddress(Address address);

	public Address updateAddress(Address address);

	public Address getAddress1(int id);

	public void blockAddress(int id);

	public void activeAddress(int id);

	public void placeOrder(Order ord);

	public List<Order> getOrder(String name);

	public void paid(int id);
}
