package com.example.ott_fe.service;

import com.example.ott_fe.entity.Catalog;
import com.example.ott_fe.entity.User;

import java.util.List;

public interface ICatalogService {
    List<Catalog> getAllCatalog() ;

    Catalog addCatalog(Catalog catalog);

    Catalog updateCatalog(Catalog catalog);

    boolean deleteCatalog(long catalogId);

}
