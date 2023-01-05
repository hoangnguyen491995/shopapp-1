package com.example.ott_fe.service.impl;
import com.example.ott_fe.entity.Catalog;
import com.example.ott_fe.repository.CatalogRepository;
import com.example.ott_fe.service.ICatalogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CatalogService implements ICatalogService {

    @Autowired
    private CatalogRepository catalogRepository ;


//    @Override
//    public boolean deleteCatalog(long id){
//        if(id>=1){
//            Catalog catalog = catalogRepository.getReferenceById(id) ;
//            if(catalog != null){
//                catalogRepository.delete(catalog) ;
//                return true ;
//            }
//        }
//        return false ;
//    }

    @Override
    public List<Catalog> getAllCatalog(){
        return catalogRepository.findAll();
    }

}
