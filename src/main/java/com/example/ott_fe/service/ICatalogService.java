package com.example.ott_fe.service;

import com.example.ott_fe.entity.Catalog;

import java.util.List;

public interface ICatalogService {
    Catalog addCatalog(Catalog catalog) ;

    Catalog updateCatalog(Catalog catalog) ;

    boolean deleteCatalog(long catalog_Id) ;

    List<Catalog> getAllCatalog() ;
}
