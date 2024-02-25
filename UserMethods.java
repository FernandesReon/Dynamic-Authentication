package com.example.DAO;

public interface UserMethods {

    boolean isValidUser(String username, String password);
    boolean addUser(User user);
}
