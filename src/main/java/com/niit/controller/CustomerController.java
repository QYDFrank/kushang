package com.niit.controller;


import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.Address;
import com.niit.model.Cart;
import com.niit.model.CartProduct;
import com.niit.model.Customer;
import com.niit.model.Message;
import com.niit.model.Order;
import com.niit.model.Product;
import com.niit.model.Wishlist;
import com.niit.model.WishlistProduct;
import com.niit.service.AdminService;
import com.niit.service.CustomerService;
import com.niit.supportclasses.GeneralSupport;

@Controller
public class CustomerController {
		
	@Autowired
	private CustomerService customerService;
	@Autowired
	private AdminService adminService;
	
	//customer
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView login(ModelAndView model) {
		Customer customer = new Customer();
		model.addObject("customer", customer);
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value = "/about-us", method = RequestMethod.GET)
	public ModelAndView aboutus(ModelAndView model) {
		model.setViewName("about-us");
		return model;
	}
	
	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public ModelAndView terms(ModelAndView model) {
		model.setViewName("terms");
		return model;
	}
	
	@RequestMapping(value = "/pay", method = RequestMethod.GET)
	public ModelAndView pay(ModelAndView model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
	    String total = request.getParameter("total");
	    HttpSession session = request.getSession();
	    session.setAttribute("total",total);
	    session.setAttribute("id", id);
		model.setViewName("pay");
		return model;
	}
	
	@RequestMapping(value = "/paid",method=RequestMethod.POST)
	public ModelAndView Paid(ModelAndView model,HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		customerService.paid(id);
		model.setViewName("redirect:/orderdetail");
		return model;
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index(ModelAndView model) {
		model.setViewName("index");
		return model;
	}
	
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public ModelAndView shop(ModelAndView model) {
		List<Product> listProduct = customerService.getAllProduct();
		model.addObject("listProduct", listProduct);
		model.setViewName("shop");
		return model;
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.GET)
	public ModelAndView address(ModelAndView model,HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		List<Address> listAddress = customerService.getAllAddress(c.getName());
		model.addObject("listAddress", listAddress);
		model.setViewName("address");
		return model;
	}
	
	@RequestMapping(value = "/deleteAddress", method = RequestMethod.GET)
	public ModelAndView deleteAddress(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		customerService.deleteAddress(id);
		return new ModelAndView("redirect:/address");
	}
	
	@RequestMapping(value = "/saveAddress", method = RequestMethod.POST)
	public ModelAndView saveAddress(@ModelAttribute Address address) {
		if (address.getId() == 0) { 
			address.setFlag(1);
			customerService.addAddress(address);
		} else {
			address.setUpdatedate(GeneralSupport.getDate());
			customerService.updateAddress(address);
		}
		return new ModelAndView("redirect:/address");
	}
	
	@RequestMapping(value = "/editAddress", method = RequestMethod.GET)
	public ModelAndView editAddress(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		Address address = customerService.getAddress1(id);
		ModelAndView model = new ModelAndView("addressform");
		model.addObject("address", address);
		return model;
	}
	
	@RequestMapping(value = "/addAddress", method = RequestMethod.GET)
	public ModelAndView addAddress(ModelAndView model) {
		Address address = new Address();
		model.addObject("address", address);
		address.setCreatedate(GeneralSupport.getDate());
		model.setViewName("addressform");
		return model;
	}
	
	@RequestMapping(value = "/blockAddress", method = RequestMethod.GET)
	public ModelAndView blockAddress(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		customerService.blockAddress(id);
		return new ModelAndView("redirect:/address");
	}
	
	@RequestMapping(value = "/activeAddress", method = RequestMethod.GET)
	public ModelAndView activeAddress(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		customerService.activeAddress(id);
		return new ModelAndView("redirect:/address");
	}
	
	@RequestMapping(value = "/person", method = RequestMethod.GET)
	public ModelAndView person(ModelAndView model,HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		Customer c1 = customerService.getCustomer(c.getName());
		model.addObject("c1",c1);
		model.setViewName("person");
		return model;
	}
	
	@RequestMapping(value = "/modifyCustomer", method = RequestMethod.GET)
	public ModelAndView modifyCustomer(HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		Customer customer = customerService.getCustomer(c.getName());
		ModelAndView model = new ModelAndView("modifycustomer");
		model.addObject("customer", customer);
		return model;
	}
	
	@RequestMapping(value = "/saveCustomer2", method = RequestMethod.POST)
	public ModelAndView saveCustomer2(@ModelAttribute Customer customer) {
	
		customer.setUpdatedate(GeneralSupport.getDate());
		adminService.updateCustomer(customer);

		return new ModelAndView("redirect:/person");
	}
	
	@RequestMapping(value = "/contact-us", method = RequestMethod.GET)
	public ModelAndView contactus(ModelAndView model) {
		Message message=new Message();
		model.addObject("message",message);
		model.setViewName("contact-us");
		return model;
	}
	
	@RequestMapping(value = "/shop-detail", method = RequestMethod.GET)
	public ModelAndView shopdetail(@ModelAttribute Product product,ModelAndView model) {
		String imageArray[]=product.getSubimg().split(",");
		List<String> imageList=Arrays.asList(imageArray);
		List<Product> listProduct = customerService.getAllProduct();
		model.addObject("listProduct", listProduct);
		model.addObject("imageList",imageList);
		model.setViewName("shop-detail");
		return model;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(ModelAndView model) {
		Customer customer = new Customer();
		model.addObject("customer", customer);
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value = "/backlogin", method = RequestMethod.GET)
	public ModelAndView login1(ModelAndView model) {
		Customer customer = new Customer();
		model.addObject("customer", customer);
		model.setViewName("login");
		return model;
	}
	
	
	@RequestMapping(value = "/newCustomer", method = RequestMethod.GET)
	public ModelAndView newContact(ModelAndView model) {
		Customer customer = new Customer();
		model.addObject("customer", customer);
		model.setViewName("register");
		return model;
	}
	
	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public ModelAndView saveCustomer(@ModelAttribute Customer customer) {
		customer.setFlag(1);
		customer.setCreatedate(GeneralSupport.getDate());
		customerService.addCustomer(customer);
		return new ModelAndView("redirect:/");	
	}
	
	@RequestMapping(value = "/saveMessage", method = RequestMethod.POST)
	public ModelAndView saveMessage(@ModelAttribute Message message) {
		message.setCreatedate(GeneralSupport.getDate());
		customerService.addMessage(message);
		return new ModelAndView("redirect:/contact-us");
		
	}
	
	@RequestMapping(value="/Customerlogin",method=RequestMethod.POST)
	public ModelAndView CustomerLogin(@ModelAttribute Customer customer,HttpServletRequest request) {
		int i = customerService.login(customer);
		if(1==i) {
			HttpSession session = request.getSession();
			session.setAttribute("customer", customer);
			ModelAndView model = new ModelAndView();
			model.setViewName("index");
			return model;
		}else if(2==i) {
			ModelAndView model = new ModelAndView();
			model.setViewName("loginblock");
			return model;
		}
		else if(3==i) {
			HttpSession session = request.getSession();
			session.setAttribute("customer", customer);
			ModelAndView model = new ModelAndView();
			model.setViewName("admin");
			return model;
		}
		else {
			ModelAndView model = new ModelAndView();
			model.setViewName("login");
			return model;
		}
	}
	
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkout(ModelAndView model,HttpServletRequest request) {
		String totalprice=request.getParameter("totalprice");
		Customer c = (Customer) request.getSession().getAttribute("customer");
		Address address = customerService.getAddress(c.getName());
		model.addObject("address",address);
		HttpSession session=request.getSession();
		session.setAttribute("total", totalprice);
		model.addObject("order",new Order());
		List<CartProduct> listCart = customerService.getCart(c.getName());
		session.setAttribute("cartSession", listCart);
		Map<String ,Object> map=new HashMap<String,Object>();
		map.put("listCart",listCart);
		map.put("customer", c);
		model.addObject("data",map);
		model.setViewName("checkout");
		return model;
	}
	
	@RequestMapping(value="/placeorder",method=RequestMethod.POST)
	public ModelAndView PlaceOrder(@ModelAttribute Order order,ModelAndView model,HttpServletRequest request,HttpSession session) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		String totalprice = (String) request.getSession().getAttribute("total");
		List<CartProduct> listCArt = customerService.getCart(c.getName());
		StringBuffer sb=new StringBuffer();
		for(CartProduct cp:listCArt) {
			sb.append(cp.getPname()+",");
		}
		String pname=sb.toString();
		order.setTotal(totalprice);
		order.setCname(c.getName());
		order.setPname(pname);
		order.setFlag(2);
		order.setCreatedate(GeneralSupport.getDate());
		customerService.placeOrder(order);
		model.setViewName("redirect:/orderdetail");
		return model;
	}
	
	@RequestMapping(value="/orderdetail",method=RequestMethod.GET)
	public ModelAndView Orderdetail(ModelAndView model,HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		List<Order> listOrder = customerService.getOrder(c.getName());
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("listOrder", listOrder);
		return new ModelAndView("orderdetail","data",map);
	}
	
	@RequestMapping(value = "/addtocart", method = RequestMethod.GET)
	public ModelAndView addtoCart(@ModelAttribute Cart cart,HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		cart.setCreatedate(GeneralSupport.getDate());
		cart.setProductid(Integer.parseInt(request.getParameter("pid")));
		cart.setCname(c.getName());
		customerService.addtoCart(cart);
		return new ModelAndView("redirect:/cart");
		
	}

	@RequestMapping(value="/cart",method=RequestMethod.GET)
	public ModelAndView Cart(ModelAndView model,HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		List<CartProduct> listCart = customerService.getCart(c.getName());
		Map<String ,Object> map=new HashMap<String,Object>();
		map.put("listCart",listCart);
		map.put("customer", c);
		return new ModelAndView("cart", "data", map);
	}
	
	@RequestMapping(value = "/removecart", method = RequestMethod.GET)
	public ModelAndView removeCart(HttpServletRequest request) {
		int cartId = Integer.parseInt(request.getParameter("cid"));
		customerService.removeCart(cartId);
		return new ModelAndView("redirect:/cart");
	}
	
	@RequestMapping(value = "/addtowishlist", method = RequestMethod.GET)
	public ModelAndView addtoWishlist(@ModelAttribute Wishlist wishlist,HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		wishlist.setCreatedate(GeneralSupport.getDate());
		wishlist.setProductid(Integer.parseInt(request.getParameter("pid")));
		wishlist.setCname(c.getName());
		customerService.addtoWishlist(wishlist);
		return new ModelAndView("redirect:/wish-list");
		
	}
	
	@RequestMapping(value = "/wish-list", method = RequestMethod.GET)
	public ModelAndView wishlist(ModelAndView model,HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		List<WishlistProduct> listWish = customerService.getWishlist(c.getName());
		Map<String ,Object> map=new HashMap<String,Object>();
		map.put("listWish",listWish);
		map.put("customer", c);
		return new ModelAndView("wish-list", "datawish", map);
	}
	
	@RequestMapping(value = "/removewish", method = RequestMethod.GET)
	public ModelAndView removeWish(HttpServletRequest request) {
		int wid = Integer.parseInt(request.getParameter("wid"));
		customerService.removeWish(wid);
		return new ModelAndView("redirect:/wish-list");
	}
	
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public ModelAndView Search(HttpServletRequest request,ModelAndView model) {
		String content=request.getParameter("content");
		List<Product>listProduct=customerService.Search(content);
		model.addObject("listProduct", listProduct);
		model.setViewName("search");
		return model;
		
	}
	
	//admin
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView model) {
		model.setViewName("admin");
		return model;
	}
	
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView product(ModelAndView model) {
		List<Product> listProduct = adminService.getAllProduct();
		model.addObject("listProduct", listProduct);
		model.setViewName("product");
		return model;
	}
	
	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public ModelAndView addProduct(ModelAndView model) {
		Product product = new Product();
		model.addObject("product", product);
		product.setCreatedate(GeneralSupport.getDate());
		model.setViewName("productform");
		return model;
	}
	
	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute Product product) {
		if (product.getId() == 0) { 
			product.setFlag(1);
			adminService.addProduct(product);
		} else {
			product.setFlag(1);
			product.setUpdatedate(GeneralSupport.getDate());
			adminService.updateProduct(product);
		}
		return new ModelAndView("redirect:/product");
	}
	
	@RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	public ModelAndView editProduct(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		Product product = adminService.getProduct(id);
		ModelAndView model = new ModelAndView("productform");
		model.addObject("product", product);
		return model;
	}
	
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public ModelAndView deleteProduct(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.deleteProduct(id);
		return new ModelAndView("redirect:/product");
	}
	
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public ModelAndView customer(ModelAndView model) {
		List<Customer> listCustomer = adminService.getAllCustomer();
		model.addObject("listCustomer", listCustomer);
		model.setViewName("customer");
		return model;
	}
	
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public ModelAndView order(ModelAndView model) {
		List<Order> listOrder = adminService.getAllOrder();
		model.addObject("listOrder", listOrder);
		model.setViewName("order");
		return model;
	}
	
	@RequestMapping(value = "/refuseOrder", method = RequestMethod.GET)
	public ModelAndView refuseOrder(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.refuseOrder(id);
		return new ModelAndView("redirect:/order");
	}
	
	@RequestMapping(value = "/approveOrder", method = RequestMethod.GET)
	public ModelAndView approveOrder(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.approveOrder(id);
		return new ModelAndView("redirect:/order");
	}
	
	@RequestMapping(value = "/deleteOrder", method = RequestMethod.GET)
	public ModelAndView deleteOrder(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.deleteOrder(id);
		return new ModelAndView("redirect:/order");
	}
	
	@RequestMapping(value = "/message", method = RequestMethod.GET)
	public ModelAndView message(ModelAndView model) {
		List<Message> listMessage = adminService.getAllMessage();
		model.addObject("listMessage", listMessage);
		model.setViewName("message");
		return model;
	}
	
	@RequestMapping(value = "/deleteMessage", method = RequestMethod.GET)
	public ModelAndView deleteMessage(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.deleteMessage(id);
		return new ModelAndView("redirect:/message");
	}
	
	@RequestMapping(value = "/deleteCustomer", method = RequestMethod.GET)
	public ModelAndView deleteCustomer(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.deleteCustomer(id);
		return new ModelAndView("redirect:/customer");
	}
	
	@RequestMapping(value = "/saveCustomer1", method = RequestMethod.POST)
	public ModelAndView saveCustomer1(@ModelAttribute Customer customer) {
		if (customer.getId() == 0) { 
			customer.setFlag(1);
			adminService.addCustomer(customer);
		} else {
			customer.setUpdatedate(GeneralSupport.getDate());
			adminService.updateCustomer(customer);
		}
		return new ModelAndView("redirect:/customer");
	}
	
	@RequestMapping(value = "/editCustomer", method = RequestMethod.GET)
	public ModelAndView editCustomer(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		Customer customer = adminService.getCustomer(id);
		ModelAndView model = new ModelAndView("customerform");
		model.addObject("customer", customer);
		return model;
	}
	
	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public ModelAndView addCustomer(ModelAndView model) {
		Customer customer = new Customer();
		model.addObject("customer", customer);
		customer.setCreatedate(GeneralSupport.getDate());
		model.setViewName("customerform");
		return model;
	}
	
	@RequestMapping(value = "/blockCustomer", method = RequestMethod.GET)
	public ModelAndView blockCustomer(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.blockCustomer(id);
		return new ModelAndView("redirect:/customer");
	}
	
	@RequestMapping(value = "/activeCustomer", method = RequestMethod.GET)
	public ModelAndView activeCustomer(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.activeCustomer(id);
		return new ModelAndView("redirect:/customer");
	}
	
	@RequestMapping(value = "/blockProduct", method = RequestMethod.GET)
	public ModelAndView blockProduct(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.blockProduct(id);
		return new ModelAndView("redirect:/product");
	}
	
	@RequestMapping(value = "/activeProduct", method = RequestMethod.GET)
	public ModelAndView activeProduct(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		adminService.activeProduct(id);
		return new ModelAndView("redirect:/product");
	}
	
	

}
