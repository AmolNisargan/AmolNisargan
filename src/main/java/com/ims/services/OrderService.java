package com.ims.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ims.Model.Orders;
import com.ims.Repositories.OrderRepository;

@Service
public class OrderService {
    @Autowired
    private OrderRepository orderRepository;

    public void placeOrder(Orders order) {
        orderRepository.save(order);
    }

    public List<Orders> listAllOrders() {
        return orderRepository.findAll();
    }

    // Implement additional methods for order processing
}
