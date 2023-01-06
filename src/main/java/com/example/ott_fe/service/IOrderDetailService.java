package com.example.ott_fe.service;

import com.example.ott_fe.entity.OrderDetail;
import com.example.ott_fe.entity.Orders;


import java.util.List;

public interface IOrderDetailService {

    List<OrderDetail> getDetailByOrderId(Long id);

    void findByOrderIdAndProductId(Orders order, Long productId);
    void deleteByOrderIdAndProductId(Orders order,Long productId);
}
