package com.itc.customertracker.service;

import com.itc.customertracker.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    void addCustomer(Customer customer);

    Customer getCustomerById(Integer id);
}
