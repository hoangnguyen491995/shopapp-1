package com.example.ott_fe.service;

import com.example.ott_fe.entity.Cart;
import com.example.ott_fe.entity.User;

public interface ICartService {
    Cart createCart(User user);
}
