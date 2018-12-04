package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.supportclasses.GeneralSupport;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Customer> getAllCustomer() {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Customer where flag!='3'")
				.list();
	}

	@Override
	public void deleteCustomer(int id) {
		// TODO 自动生成的方法存根
		Customer customer = (Customer) sessionFactory.getCurrentSession().load(
				Customer.class, id);
		if (null != customer) {
			this.sessionFactory.getCurrentSession().delete(customer);
		}
	}

	@Override
	public void addCustomer(Customer customer) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}

	@Override
	public Customer updateCustomer(Customer customer) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().update(customer);
		return customer;
	}

	@Override
	public Customer getCustomer(int id) {
		// TODO 自动生成的方法存根
		return (Customer) sessionFactory.getCurrentSession().get(
				Customer.class, id);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> getAllProduct() {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Product")
				.list();
	}

	@Override
	public void addProduct(Product product) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@Override
	public Product updateProduct(Product product) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().update(product);
		return product;
	}

	@Override
	public Product getProduct(int id) {
		// TODO 自动生成的方法存根
		return (Product)sessionFactory.getCurrentSession().get(Product.class, id);
	}

	@Override
	public void deleteProduct(int id) {
		// TODO 自动生成的方法存根
		Product product = (Product) sessionFactory.getCurrentSession().load(
				Product.class, id);
		if (null != product) {
			this.sessionFactory.getCurrentSession().delete(product);
		}
	}

	@Override
	public void blockCustomer(int id) {
		// TODO 自动生成的方法存根
		Customer customer = (Customer) sessionFactory.getCurrentSession().load(
				Customer.class, id);
		customer.setFlag(2);
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}

	@Override
	public void activeCustomer(int id) {
		// TODO 自动生成的方法存根
		Customer customer = (Customer) sessionFactory.getCurrentSession().load(
				Customer.class, id);
		customer.setFlag(1);
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> getAllMessage() {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Message")
				.list();
	}

	@Override
	public void deleteMessage(int id) {
		// TODO 自动生成的方法存根
		Message message = (Message) sessionFactory.getCurrentSession().load(
				Message.class, id);
		if (null != message) {
			this.sessionFactory.getCurrentSession().delete(message);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getAllOrder() {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Order")
				.list();
	}

	@Override
	public void refuseOrder(int id) {
		// TODO 自动生成的方法存根
		Order order = (Order) sessionFactory.getCurrentSession().load(
				Order.class, id);
		order.setFlag(3);
		order.setUpdatedate(GeneralSupport.getDate());
		sessionFactory.getCurrentSession().saveOrUpdate(order);
	}

	@Override
	public void approveOrder(int id) {
		// TODO 自动生成的方法存根
		Order order = (Order) sessionFactory.getCurrentSession().load(
				Order.class, id);
		order.setFlag(1);
		order.setUpdatedate(GeneralSupport.getDate());
		sessionFactory.getCurrentSession().saveOrUpdate(order);
	}

	@Override
	public void deleteOrder(int id) {
		// TODO 自动生成的方法存根
		Order order = (Order) sessionFactory.getCurrentSession().load(
				Order.class, id);
		if (null != order) {
			this.sessionFactory.getCurrentSession().delete(order);
		}
	}

	@Override
	public void blockProduct(int id) {
		// TODO 自动生成的方法存根
		Product product = (Product) sessionFactory.getCurrentSession().load(
				Product.class, id);
		product.setFlag(2);
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	@Override
	public void activeProduct(int id) {
		// TODO 自动生成的方法存根
		Product product = (Product) sessionFactory.getCurrentSession().load(
				Product.class, id);
		product.setFlag(1);
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

}
