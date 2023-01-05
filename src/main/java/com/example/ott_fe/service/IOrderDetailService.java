package com.example.ott_fe.service;

import com.example.ott_fe.entity.OrderDetail;
import com.example.ott_fe.entity.Orders;
import com.example.ott_fe.entity.Product;
import com.example.ott_fe.entity.User;

import java.util.List;

public interface IOrderDetailService {

    List<OrderDetail> getDetailByOrderId(Long id);

    void findByOrderIdAndProductId(Orders order, Long productId);
}
