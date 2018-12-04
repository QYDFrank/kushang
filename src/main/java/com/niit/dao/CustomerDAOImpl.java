package com.niit.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Address;
import com.niit.model.Cart;
import com.niit.model.CartProduct;
import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.Wishlist;
import com.niit.model.WishlistProduct;
import com.niit.supportclasses.GeneralSupport;

@Repository
public  class CustomerDAOImpl implements CustomerDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addCustomer(Customer customer) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(customer);
	}

	@Override
	public int login(Customer customer) {
		Customer customer1 = (Customer) sessionFactory.getCurrentSession().createQuery("from Customer where name='"+customer.getName()+"'and password='"+customer.getPassword()+"'").uniqueResult();
		if(null!=customer1) {
			if(customer1.getFlag()==1) {
				return 1;
			}else if(customer1.getFlag()==2){
				return 2;
			}
			else {
				return 3;
			}
		}else {
			return 4;
		}
		
	}

	@SuppressWarnings("unchecked")
	public List<Product> getAllProduct() {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Product")
				.list();
	}

	@Override
	public void addtoCart(Cart cart) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<CartProduct> getCart(String cname) {
		List<CartProduct> cartProducts=new ArrayList<>();
		List<Object[]> cartlist= sessionFactory.getCurrentSession().createSQLQuery("select p.name,p.img,p.price,c.cname,c.id,c.productid from product p join cart c on p.id=c.productid where c.cname='"+cname+"'").list();
		for(Object[] model:cartlist) {
			CartProduct cartProduct=new CartProduct();
			cartProduct.setPname(model[0].toString());
			cartProduct.setImg(model[1].toString());
			cartProduct.setPrice(model[2].toString());
			cartProduct.setCname(model[3].toString());
			cartProduct.setCid(Integer.parseInt(model[4].toString()));
			cartProduct.setPid(Integer.parseInt(model[5].toString()));
			cartProducts.add(cartProduct);
		}
		return cartProducts;
	}

	@Override
	public void removeCart(int cartId) {
		// TODO 自动生成的方法存根
		Cart cart = (Cart) sessionFactory.getCurrentSession().load(
				Cart.class, cartId);
		if (null != cart) {
			this.sessionFactory.getCurrentSession().delete(cart);
		}
	}

	@Override
	public void addtoWishlist(Wishlist wishlist) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(wishlist);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<WishlistProduct> getWishlist(String cname) {
		// TODO 自动生成的方法存根
		List<WishlistProduct> wishlistProducts=new ArrayList<>();
		List<Object[]> wishlist= sessionFactory.getCurrentSession().createSQLQuery("select p.name,p.img,p.price,p.category,w.cname,w.productid,w.id from product p join wishlist w on p.id=w.productid where w.cname='"+cname+"'").list();
		for(Object[] model:wishlist) {
			WishlistProduct wishlistProduct=new WishlistProduct();
			wishlistProduct.setPname(model[0].toString());
			wishlistProduct.setImg(model[1].toString());
			wishlistProduct.setPrice(model[2].toString());
			wishlistProduct.setCategory(model[3].toString());
			wishlistProduct.setCname(model[4].toString());
			wishlistProduct.setPid(Integer.parseInt(model[5].toString()));
			wishlistProduct.setWid(Integer.parseInt(model[6].toString()));
			wishlistProducts.add(wishlistProduct);
		}
		return wishlistProducts;
	}

	@Override
	public void removeWish(int wid) {
		// TODO 自动生成的方法存根
		Wishlist wishlist = (Wishlist) sessionFactory.getCurrentSession().load(
				Wishlist.class, wid);
		if (null != wishlist) {
			this.sessionFactory.getCurrentSession().delete(wishlist);
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Product> Search(String content) {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Product where name like '%"+content+"%' or category like '%"+content+"%'")
				.list();
	}

	@Override
	public void addOrder(Order order) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(order);
	}

	@Override
	public void addMessage(Message message) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(message);
	}

	@Override
	public Address getAddress(String name) {
		// TODO 自动生成的方法存根
		return (Address) sessionFactory.getCurrentSession().createQuery("from Address where cname='"+name+"' and flag=2")
				.uniqueResult();
	}

	@Override
	public Customer getCustomer(String name) {
		// TODO 自动生成的方法存根
		return (Customer) sessionFactory.getCurrentSession().createQuery("from Customer where name='"+name+"'")
				.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Address> getAllAddress(String name) {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Address where cname='"+name+"'")
				.list();
	}

	@Override
	public void activeAddress(int id) {
		// TODO 自动生成的方法存根
		Address address = (Address) sessionFactory.getCurrentSession().load(
				Address.class, id);
		address.setFlag(2);
		sessionFactory.getCurrentSession().saveOrUpdate(address);
	}

	@Override
	public void blockAddress(int id) {
		// TODO 自动生成的方法存根
		Address address = (Address) sessionFactory.getCurrentSession().load(
				Address.class, id);
		address.setFlag(1);
		sessionFactory.getCurrentSession().saveOrUpdate(address);
	}

	@Override
	public Address getAddress1(int id) {
		// TODO 自动生成的方法存根
		return (Address)sessionFactory.getCurrentSession().get(Address.class, id);
	}

	@Override
	public Address updateAddress(Address address) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().update(address);
		return address;
	}

	@Override
	public void addAddress(Address address) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(address);
	}

	@Override
	public void deleteAddress(int id) {
		// TODO 自动生成的方法存根
		Address address = (Address) sessionFactory.getCurrentSession().load(
				Address.class, id);
		if (null != address) {
			this.sessionFactory.getCurrentSession().delete(address);
		}
	}

	@Override
	public void placeOrder(Order ord) {
		// TODO 自动生成的方法存根
		sessionFactory.getCurrentSession().saveOrUpdate(ord);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getOrder(String name) {
		// TODO 自动生成的方法存根
		return sessionFactory.getCurrentSession().createQuery("from Order where cname='"+name+"'")
				.list();
	}

	@Override
	public void paid(int id) {
		// TODO Auto-generated method stub
		Order order = (Order) sessionFactory.getCurrentSession().load(Order.class, id);
		order.setFlag(4);
		order.setUpdatedate(GeneralSupport.getDate());
		sessionFactory.getCurrentSession().saveOrUpdate(order);
	}


	


}
