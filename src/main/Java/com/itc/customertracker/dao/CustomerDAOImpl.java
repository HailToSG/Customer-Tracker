package com.itc.customertracker.dao;

import com.itc.customertracker.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
    private SessionFactory sessionFactory;

    @Autowired
    public CustomerDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Customer> getCustomers() {
        Session session = getSession();
        String selectCustomersQuery = "from Customer";
        Query<Customer> customerQuery = session.createQuery(selectCustomersQuery, Customer.class);
        return customerQuery.getResultList();
    }

    @Override
    public void saveCustomer(Customer customer) {
        Session session = getSession();
        session.save(customer);
    }

    @Override
    public Customer getCustomerById(Integer id) {
        Session session = getSession();
        return session.get(Customer.class, id);
    }

    @Override
    public void updateCustomer(Customer customer) {
        Session session = getSession();
        session.update(customer);
    }

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    } 
}
