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

import com.ims.Model.Products;
import com.ims.Repositories.ProductsInfo;

@Controller
public class ProductController2 {
	@Autowired
	private ProductsInfo prdrepo;

	
	@GetMapping("/add")
	public String insert() {
		return "addProduct.jsp";
	}

	@PostMapping("/add1")
	public String add(@ModelAttribute Products pd) {

		prdrepo.save(pd);

		return "redirect:/fetch";
	}

	@RequestMapping("/fetch")
	public String fetchdata(Model m) {
		List<Products> li = prdrepo.findAll();
		System.out.println(li);
		m.addAttribute("e_data", li);
		return "fetch.jsp";
	}

	@RequestMapping("/delete/{pid}")
	public String delete(@PathVariable int pid) {
		prdrepo.deleteById(pid);
		return "redirect:/fetch";
	}

	@GetMapping("/{pid}")
	public String update(@PathVariable int pid, Model m) {
		Products obj = prdrepo.findById(pid);
//		System.out.println("pit: "+obj.getPcatogory());
		m.addAttribute("products_data", obj);
		return "update.jsp";
	}
	@PostMapping("/edit/{pid}")
	public String edit(@PathVariable int pid, @ModelAttribute Products p) {
		
		Products obj=prdrepo.findById(pid);
		if(obj!=null) {
			obj.setPcatogory(p.getPcatogory());
			obj.setPname(p.getPname());
			obj.setPprice(p.getPprice());
			obj.setPqualtity(p.getPqualtity());
			prdrepo.save(obj);
			
		}
		return "redirect:/fetch";
	}
	
	@GetMapping("/chart")
	public String show() {
		return "chart.jsp";
	}
}
