package com.itc.customertracker.dao;

import com.itc.customertracker.entity.Customer;

import java.util.List;

public interface CustomerDAO {

    List<Customer> getCustomers();

    void addCustomer(Customer customer);
}
