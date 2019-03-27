package com.itc.customertracker.service;

import com.itc.customertracker.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    void saveCustomer(Customer customer);

    Customer getCustomerById(int id);

    void updateCustomer(Customer customer);

    void deleteCustomer(int id);
}
