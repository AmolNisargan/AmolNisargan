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

import com.ims.Model.Administrator;
import com.ims.Model.Products;
import com.ims.Repositories.AdministratorInfo;

@Controller
public class AdminController {

	@Autowired
	private AdministratorInfo adrepo;
	@GetMapping("/home")
	public String home1() {
		return "Registration.jsp";
	}
	
	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}

	@GetMapping("/about")
	public String about() {
		return "about.jsp";
	}

	@PostMapping("/register")
	public String register(@ModelAttribute Administrator ad, @RequestParam String cpassword) {
		if (ad.getPassword().equals(cpassword)) {
			adrepo.save(ad);

			return "login.jsp";
		} else {
			return "Registration.jsp";
		}
	}

	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password) {
		Administrator ob = adrepo.findByEmail(email);
		if (ob != null && ob.getEmail().equals(email) && ob.getPassword().equals(password)) {
			return "addProduct.jsp";
		} else {
			return "login.jsp";
		}
	}
	
	@RequestMapping("/fetchuser")
	public String fetchdata(Model m) {
		List<Administrator> li = adrepo.findAll();
		System.out.println(li);
		m.addAttribute("e_data", li);
		return "fetch_Admin.jsp";
	}

	@RequestMapping("/deleteuser/{id}")
	public String deleteuser(@PathVariable int id) {
		adrepo.deleteById(id);
		return "redirect:/fetchuser";
	}

	@GetMapping("/edituser{id}")
	public String update(@PathVariable int id, Model m) {
		Administrator obj = adrepo.findById(id).orElse(null);
		m.addAttribute("admin_data", obj);
		return "admin_update.jsp";
	}
	@PostMapping("/adminedit{id}")
	public String edit(@PathVariable int id, @ModelAttribute Administrator p) {
		
		Administrator obj=adrepo.findById(id).orElse(null);
		if(obj!=null) {
			obj.setName(p.getName());
			obj.setEmail(p.getEmail());
			obj.setPhone(p.getPhone());
			obj.setPassword(p.getPassword());
			adrepo.save(obj);
			
		}
		return "redirect:/fetchuser";
	}
	
}
