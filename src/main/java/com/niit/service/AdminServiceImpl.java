package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.AdminDAO;
import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;

@Service
@Transactional
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public List<Customer> getAllCustomer() {
		// TODO 自动生成的方法存根
		return adminDAO.getAllCustomer();
	}

	@Override
	public void deleteCustomer(int id) {
		// TODO 自动生成的方法存根
		adminDAO.deleteCustomer(id);
	}

	@Override
	public void addCustomer(Customer customer) {
		// TODO 自动生成的方法存根
		adminDAO.addCustomer(customer);
	}

	@Override
	public Customer updateCustomer(Customer customer) {
		return adminDAO.updateCustomer(customer);
	}

	@Override
	public Customer getCustomer(int id) {
		// TODO 自动生成的方法存根
		return adminDAO.getCustomer(id);
	}

	@Override
	public List<Product> getAllProduct() {
		// TODO 自动生成的方法存根
		return adminDAO.getAllProduct();
	}

	@Override
	public void addProduct(Product product) {
		// TODO 自动生成的方法存根
		adminDAO.addProduct(product);
	}

	@Override
	public Product updateProduct(Product product) {
		// TODO 自动生成的方法存根
		return adminDAO.updateProduct(product);
	}

	@Override
	public Product getProduct(int id) {
		// TODO 自动生成的方法存根
		return adminDAO.getProduct(id);
	}

	@Override
	public void deleteProduct(int id) {
		// TODO 自动生成的方法存根
		adminDAO.deleteProduct(id);
	}

	@Override
	public void blockCustomer(int id) {
		// TODO 自动生成的方法存根
		adminDAO.blockCustomer(id);
	}

	@Override
	public void activeCustomer(int id) {
		// TODO 自动生成的方法存根
		adminDAO.activeCustomer(id);
	}

	@Override
	public List<Message> getAllMessage() {
		// TODO 自动生成的方法存根
		return adminDAO.getAllMessage();
	}

	@Override
	public void deleteMessage(int id) {
		// TODO 自动生成的方法存根
		adminDAO.deleteMessage(id);
	}

	@Override
	public List<Order> getAllOrder() {
		// TODO 自动生成的方法存根
		return adminDAO.getAllOrder();
	}

	@Override
	public void refuseOrder(int id) {
		// TODO 自动生成的方法存根
		adminDAO.refuseOrder(id);
	}

	@Override
	public void approveOrder(int id) {
		// TODO 自动生成的方法存根
		adminDAO.approveOrder(id);
	}

	@Override
	public void deleteOrder(int id) {
		// TODO 自动生成的方法存根
		adminDAO.deleteOrder(id);
	}

	@Override
	public void blockProduct(int id) {
		// TODO Auto-generated method stub
		adminDAO.blockProduct(id);
	}

	@Override
	public void activeProduct(int id) {
		// TODO Auto-generated method stub
		adminDAO.activeProduct(id);
	}

}
