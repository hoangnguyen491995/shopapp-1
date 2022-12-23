package com.example.ott_fe.service.impl;

import com.example.ott_fe.entity.User;
import com.example.ott_fe.repository.UserRepository;
import com.example.ott_fe.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService {
    @Autowired
    private UserRepository userRepository ;

    @Override
    public User addUser(User user){
         if(user!=null){
             return userRepository.save(user) ;
         }
        return null ;
    }

    @Override
    public User updateUser( User user){
         if(user != null){
             User user1 = userRepository.getReferenceById(user.getUser_Id()) ;
             if(user1 != null){
                 user1.setEmail(user.getEmail());
             }
         }
        return null ;
    }

    @Override
    public boolean deleteUser(long id){
         if(id>=1){
             User user = userRepository.getReferenceById(id);
             if(user != null){
                 userRepository.delete(user) ;
                 return true ;
             }
         }
        return false ;
    }

    @Override
    public List<User> getAllUser(){
        return userRepository.findAll();
    }

}
