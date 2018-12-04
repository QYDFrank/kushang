package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;

public interface AdminDAO {

	List<Customer> getAllCustomer();

	void deleteCustomer(int id);

	void addCustomer(Customer customer);

	Customer updateCustomer(Customer customer);

	Customer getCustomer(int id);

	List<Product> getAllProduct();

	void addProduct(Product product);

	Product updateProduct(Product product);

	Product getProduct(int id);

	void deleteProduct(int id);

	void blockCustomer(int id);

	void activeCustomer(int id);

	List<Message> getAllMessage();

	void deleteMessage(int id);

	List<Order> getAllOrder();

	void refuseOrder(int id);

	void approveOrder(int id);

	void deleteOrder(int id);
	
	void blockProduct(int id);

	void activeProduct(int id);

}
