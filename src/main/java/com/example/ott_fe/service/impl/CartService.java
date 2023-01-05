package com.example.ott_fe.service.impl;

import com.example.ott_fe.entity.Orders;
import com.example.ott_fe.entity.User;
import com.example.ott_fe.repository.CartRepository;
import com.example.ott_fe.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService implements ICartService {

    @Autowired
    private CartRepository cartRepository;

    @Override
    public Orders createOrder(User user) {
        Orders order = new Orders();
        order.setUser(user);
        return cartRepository.save(order);
    }
}
