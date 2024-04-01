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
import com.ims.Repositories.OrderRepository;
import com.ims.Repositories.ProductsInfo;


@Controller
public class OrderController {
	@Autowired
	private OrderRepository orderrepo;

	@Autowired
	private ProductsInfo prdrepo;

	@GetMapping("/products{pid}")
	public String update(@PathVariable int pid, Model m) {
		Products obj = prdrepo.findById(pid);
		m.addAttribute("products_data", obj);
//		System.out.println(obj.getPname());
		return "orders.jsp";
	}

	@PostMapping("/addOrder{pid}")
	public String edit(@RequestParam int pid,@RequestParam int oqualtity,  @ModelAttribute Products p, @ModelAttribute Orders o) {
		Products obj = prdrepo.findById(pid);
		Orders b = new Orders();
		if (obj != null) {
			b.setQuantity(oqualtity);
			b.setProduct(p);
			orderrepo.save(b);
			return "redirect:/ordersfetch";
		}
		return "redirect:/orders.jsp";
	}

	@RequestMapping("/ordersfetch")
	public String fetchOrder(Model m) {
		List<Orders> li = orderrepo.findAll();
		System.out.println("****AAAAA***"+li);
		m.addAttribute("orders", li);
		return "orders1.jsp";
	}


}
