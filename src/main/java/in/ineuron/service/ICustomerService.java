package in.ineuron.service;

import java.util.List;

import in.ineuron.model.Customer;

public interface ICustomerService {

	public List<Customer> fetchAllCustomer();
	
	public void addCustomer(Customer customer);
	
	public Customer getCustomerById(Integer customerId);

	public void deleteCustomer(Integer customerId);
}
