package com.niit.service;

import java.util.List;

import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;

public interface AdminService {

	public List<Customer> getAllCustomer();

	public void deleteCustomer(int id);

	public void addCustomer(Customer customer);

	public Customer updateCustomer(Customer customer);

	public Customer getCustomer(int id);

	public List<Product> getAllProduct();

	public void addProduct(Product product);

	public Product updateProduct(Product product);

	public Product getProduct(int id);

	public void deleteProduct(int id);

	public void blockCustomer(int id);

	public void activeCustomer(int id);

	public List<Message> getAllMessage();

	public void deleteMessage(int id);

	public List<Order> getAllOrder();

	public void refuseOrder(int id);

	public void approveOrder(int id);

	public void deleteOrder(int id);
	
	public void blockProduct(int id);

	public void activeProduct(int id);

}
