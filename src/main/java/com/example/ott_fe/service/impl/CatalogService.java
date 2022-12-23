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

  @Override
  public Catalog addCatalog(Catalog catalog){
      if(catalog != null){
          return catalogRepository.save(catalog) ;
      }
      return null ;
  }

    @Override
    public Catalog updateCatalog( Catalog catalog){
//        if(catalog!= null){
//            Catalog catalog1 = catalogRepository.findById(catalog.getCatalog_Id()).orElse(null) ;
//            if(catalog1!=null){
//                catalog1.setCatalog_name(catalog.getCatalog_Name());
//
//                return catalogRepository.save(catalog1) ;
//            }
//        }
        return null ;
    }

    @Override
    public boolean deleteCatalog(long id){
        if(id>=1){
            Catalog catalog = catalogRepository.getReferenceById(id) ;
            if(catalog != null){
                catalogRepository.delete(catalog) ;
                return true ;
            }
        }
        return false ;
    }

    @Override
    public List<Catalog> getAllCatalog(){
        return catalogRepository.findAll();
    }

}
