package com.example.ott_fe.service.impl;

import com.example.ott_fe.entity.Cart;
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
    public Cart createCart(User user) {
        Cart cart = new Cart();
        cart.setUser(user);
        return cartRepository.save(cart);
    }
}
