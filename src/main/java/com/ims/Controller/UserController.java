package com.ims.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ims.Model.Orders;
import com.ims.Model.Products;
import com.ims.Model.User;
import com.ims.Repositories.OrderRepository;
import com.ims.Repositories.ProductsInfo;
import com.ims.Repositories.UserInfo;

@Controller
public class UserController {

	@Autowired
	private UserInfo userInfo;
	
	@Autowired
	private OrderRepository orderrepo;

	
	@Autowired
	private ProductsInfo prdrepo;
	
	@GetMapping("/userAdd")
	public String User_Add() {
		return "User_Add.jsp";
	}
	
	@PostMapping("/userregister")
	public String Userregister(@ModelAttribute User u,@RequestParam String cuser_password) {
		System.out.println("**************"+u.getEmail()+cuser_password);
		if (u.getUser_password().equals(cuser_password)) {
			userInfo.save(u);

			return "User_login.jsp";
		} 
			return "User_Add.jsp";
		
	}
	@PostMapping("/User_login")
	public String Userlogin(@RequestParam String email, @RequestParam String user_password) {
		User ob = userInfo.findByEmail(email);
		if (ob != null && ob.getEmail().equals(email) && ob.getUser_password().equals(user_password)) {
			return "redirect:/productfetch";
		} else {
			return "User_login.jsp";
		}
	}
	@RequestMapping("/productfetch")
	public String fetchdata(Model m) {
		List<Products> li = prdrepo.findAll();
		System.out.println(li);
		m.addAttribute("e_data", li);
		return "User_Product_Fetch.jsp";
	}
	
	@GetMapping("/userproducts{pid}")
	public String update(@PathVariable int pid, Model m) {
		Products obj = prdrepo.findById(pid);
		m.addAttribute("products_data", obj);
//		System.out.println(obj.getPname());
		return "User_order.jsp";
	}
	
	@PostMapping("/useraddOrder{pid}")
	public String edit(@RequestParam int pid,@RequestParam int oqualtity,  @ModelAttribute Products p, @ModelAttribute Orders o) {
		Products obj = prdrepo.findById(pid);
		Orders b = new Orders();
		if (obj != null) {
			b.setQuantity(oqualtity);
			b.setProduct(p);
			orderrepo.save(b);
			return "redirect:/userordersfetch";
		}
		return "redirect:/User_order.jsp";
	}

	@RequestMapping("/userordersfetch")
	public String fetchOrder(Model m) {
		List<Orders> li = orderrepo.findAll();
		m.addAttribute("user_orders", li);
		return "User_Order_view.jsp";
	}
}
