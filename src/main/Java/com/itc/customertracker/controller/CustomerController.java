package com.itc.customertracker.controller;

import com.itc.customertracker.entity.Customer;
import com.itc.customertracker.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    private CustomerService customerService;

    @Autowired
    public CustomerController(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/list")
    public String customerList(Model model){
        List<Customer> customers = customerService.getCustomers();
        model.addAttribute("customers", customers);
        return "customer-list";
    }

    @GetMapping("/showAddForm")
    public String showAddForm(Model model){
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "add-customer-form";
    }

    @GetMapping("/showUpdateCustomerForm")
    public String showUpdateCustomerForm(Model model, @RequestParam("customerId") int id){
        Customer customer = customerService.getCustomerById(id);
        model.addAttribute("customer", customer);
        return "update-customer-form";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer newCustomer){
        customerService.saveCustomer(newCustomer);
        return "redirect:/customer/list";
    }

    @PostMapping("/updateCustomer")
    public String updateCustomer(@ModelAttribute("customer") Customer customer){
        customerService.updateCustomer(customer);
        return "redirect:/customer/list";
    }

    @RequestMapping("/deleteCustomer")
    public String deleteCustomer (@RequestParam("customerId") int id){
        customerService.deleteCustomer(id);
        return "redirect:/customer/list";
    }

}
