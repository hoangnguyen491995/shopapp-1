package com.example.ott_fe.service.impl;

import com.example.ott_fe.entity.OrderDetail;
import com.example.ott_fe.entity.Orders;
import com.example.ott_fe.entity.Product;
import com.example.ott_fe.entity.User;
import com.example.ott_fe.repository.CartRepository;
import com.example.ott_fe.repository.OrderDetailRepository;
import com.example.ott_fe.service.ICartService;
import com.example.ott_fe.service.IOrderDetailService;
import com.example.ott_fe.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailService implements IOrderDetailService {

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Autowired
    IProductService productService;

    @Autowired
    CartRepository cartRepository;

    @Override
    public List<OrderDetail> getDetailByOrderId(Long id) {
        return orderDetailRepository.findAllByOrderId(id);
    }

//   Add product from cart
    @Override
    public void findByOrderIdAndProductId(Orders order, Long productId) {
        OrderDetail orderDetail = orderDetailRepository.findByOrderIdAndProductId(order.getId(), productId);
        Product product = productService.getProductById(productId);
        if (orderDetail != null) {
            orderDetail.setQuantity(orderDetail.getQuantity() + 1);
            orderDetailRepository.save(orderDetail);
        } else {
            OrderDetail orderDetail1 = new OrderDetail();
            orderDetail1.setQuantity(1);
            orderDetail1.setOrder(order);
            orderDetail1.setProduct(product);
            orderDetailRepository.save(orderDetail1);
        }
    }
//  delete product from cart
    @Override
    public void deleteByOrderIdAndProductId(Orders order, Long productId) {
        OrderDetail orderDetail = orderDetailRepository.findByOrderIdAndProductId(order.getId(), productId);
        if (orderDetail != null) {
            if (orderDetail.getQuantity() > 1) {
                orderDetail.setQuantity(orderDetail.getQuantity() - 1);
                orderDetailRepository.save(orderDetail);
            } else {
                orderDetailRepository.delete(orderDetail);
            }

        }
    }
}
