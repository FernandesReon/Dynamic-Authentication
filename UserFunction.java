package com.example.DAO;

import com.example.ConnectDB.Connectivity;
import com.example.ConnectDB.Queries;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
public class UserFunction implements UserMethods{

    @Override
    public boolean isValidUser(String username, String password) {
        try(Connection connection = Connectivity.connectDB();
        PreparedStatement statement = connection.prepareStatement(Queries.LOGIN_QUERY)){

            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet result = statement.executeQuery();
            return result.next();
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
            return false;
        }
    }

    @Override
    public boolean addUser(User user) {
        try(Connection connection = Connectivity.connectDB();
            PreparedStatement statement = connection.prepareStatement(Queries.REGISTER_QUERY)){

            statement.setString(1, user.getUsername());
            statement.setString(2, user.getEmailID());
            statement.setString(3, user.getPassword());

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
            return false;
        }
    }
}
