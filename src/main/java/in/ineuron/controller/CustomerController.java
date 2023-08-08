 package in.ineuron.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.ineuron.model.Customer;
import in.ineuron.service.ICustomerService;

@Controller
@RequestMapping("customer")
public class CustomerController {

	@Autowired
	private ICustomerService service;
	
	@GetMapping("list")
	public String customersList(Map<String,Object> model) {
		System.out.println(service.getClass().getName());
		List<Customer> customers = service.fetchAllCustomer();
		model.put("customers", customers);
		System.out.println(customers);
		return "customer_list";
	}
	
	@GetMapping("showForm")
	public String showCustomer(Map<String, Object> model) {
		Customer customer = new Customer();
		model.put("customer", customer);
		return "add_customer";
	}
	
	@PostMapping(value = "saveCustomer")
	public String addCustomer(Map<String, Object> model,@ModelAttribute("customer") Customer customer) {
		System.out.println(customer);
		service.addCustomer(customer);
		return "redirect:/customer/list";
	}
	
	@GetMapping("showUpdateForm")
	public String updateCustomer(Map<String,Object> model,@RequestParam("customerId")Integer customerId) {
		Customer customer = service.getCustomerById(customerId);
		model.put("customer", customer);
		return "add_customer";
	}
	
	@GetMapping("deleteCustomer")
	public String deleteCustomer(@RequestParam Integer customerId) {
		service.deleteCustomer(customerId);
		return "redirect:/customer/list";
	}
	
}
