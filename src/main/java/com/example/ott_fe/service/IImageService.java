package com.example.ott_fe.service;

import com.example.ott_fe.entity.Catalog;
import com.example.ott_fe.entity.Image;

import java.util.List;

public interface IImage {

    Catalog addImage(Image image) ;

    Catalog updateImage(Image image) ;

    boolean deleteImage(long Image_Id) ;

    List<Catalog> getAllImage() ;

}
