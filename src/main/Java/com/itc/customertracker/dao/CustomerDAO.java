package com.itc.customertracker.dao;

import com.itc.customertracker.entity.Customer;

import java.util.List;

public interface CustomerDAO {

    List<Customer> getCustomers();

    void saveCustomer(Customer customer);

    Customer getCustomerById(Integer id);

    void updateCustomer(Customer customer);
}
