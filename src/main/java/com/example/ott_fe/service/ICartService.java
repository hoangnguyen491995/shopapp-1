package com.example.ott_fe.service;

import com.example.ott_fe.entity.Orders;
import com.example.ott_fe.entity.User;

public interface ICartService {
    Orders createOrder(User user);
}
