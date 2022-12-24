package com.example.ott_fe.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class loginDto {
    private String email ;
    private String password ;
    private Boolean remeberMe=false ;
}
