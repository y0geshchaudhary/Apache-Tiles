package com.javapoint.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.javapoint.form.Contact;

@Controller
@SessionAttributes
public class ContactController {
	@RequestMapping(value = "/addContact", method = RequestMethod.GET)
	public ModelAndView addContact(@ModelAttribute("contact") Contact contact, BindingResult result) {
		// write the code here to add contact
		//return "redirect:contact.html";
		return new ModelAndView("contact", "command", new Contact());
	}

	@RequestMapping("/contact")
	public ModelAndView showContacts() {
		return new ModelAndView("contact", "command", new Contact());
	}
}