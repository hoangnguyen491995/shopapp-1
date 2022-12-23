package com.example.ott_fe.controller;

import com.example.ott_fe.entity.User;
import com.example.ott_fe.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    IUserService userService;

    @GetMapping
    public List<User> getAllUser() {
        return userService.getAllUser();
    }

    @PostMapping
    public User addUser(@RequestBody User user){
        return userService.addUser(user) ;
    }

  // sủa theo id
    @PutMapping("/update")
    public User updateUser(@RequestBody User user){
        return userService.updateUser(user) ;
    }

    @DeleteMapping("/delete")
    public Boolean deleteUser(@RequestBody String id){
        return userService.deleteUser(Long.parseLong(id)) ;
    }

}
