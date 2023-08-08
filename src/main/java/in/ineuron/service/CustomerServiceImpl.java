package in.ineuron.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.ineuron.dao.ICustomerDao;
import in.ineuron.model.Customer;

@Service
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	private ICustomerDao dao;
	@Override
	public List<Customer> fetchAllCustomer() {
		
		return (List<Customer>) dao.findAll();
	}
	@Override
	public void addCustomer(Customer customer) {
		dao.save(customer);
		
	}
	@Override
	public Customer getCustomerById(Integer customerId) {
		Optional<Customer> optional = dao.findById(customerId);
		return optional.get();
	}
	@Override
	public void deleteCustomer(Integer customerId) {
		dao.deleteById(customerId);
		
	}

}
