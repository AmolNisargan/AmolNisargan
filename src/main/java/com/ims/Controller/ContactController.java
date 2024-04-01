package com.ims.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ims.Model.Inquiry;
import com.ims.Repositories.InquiryRepository;

@Controller
public class ContactController {

	@Autowired
	private InquiryRepository inquiryRepo;
	
    @RequestMapping("/contact")
    public String showContactForm() {
        return "/home"; // Assuming the JSP file is named "contact.jsp" and located in the appropriate folder
    }

    @PostMapping("/sendInquiry")
    public String handleInquiry(@ModelAttribute Inquiry inq) {
        inquiryRepo.save(inq);
        return "redirect:/contact"; // Redirects to the contact page
    }
    
    @RequestMapping("/inquiryfetch")
	public String fetchinquiry(Model m) {
		List<Inquiry> li = inquiryRepo.findAll();
		m.addAttribute("inquiries", li);
		return "Iinquiry_Details.jsp";
	}
}
