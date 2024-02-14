package com.example.ConnectDB;

public class Queries {

    public static final String LOGIN_QUERY = "SELECT * FROM login_details WHERE username =? AND password = ?";
    public static final String REGISTER_QUERY = "INSERT INTO login_details (username, email_address, password) " +
            "VALUES (?,?,?)";
    public static final String USER_CHECK_QUERY = "SELECT * FROM login_details WHERE username = ?";
    public static final String PASSWORD_CHECK_QUERY = "SELECT * FROM login_details WHERE password = ?";

}
