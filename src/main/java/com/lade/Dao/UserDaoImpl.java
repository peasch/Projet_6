package com.lade.Dao;

import com.lade.Entity.User;

import java.sql.*;

public class UserDaoImpl implements UserDao {

    private DaoFactory daoFactory;

    public UserDaoImpl(DaoFactory daoFactory) {
        this.daoFactory = daoFactory;
    }


    @Override
    public void ajouter(User user) {
        Connection connexion;
        PreparedStatement preparedStatement;
        try {
            connexion = daoFactory.getConnexion();
            preparedStatement = connexion.prepareStatement("INSERT INTO user(nom,prenom,email,username,password) VALUES (?,?,?,?,?);");
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getFirstName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getUserName());
            preparedStatement.setString(5, user.getPassword());
            preparedStatement.executeUpdate();
            preparedStatement.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public int existingUser(String userName, String password) {
        Connection connexion;
        int userId=0;
        PreparedStatement preparedStatement = null;
        boolean exist =false;
        try {
            connexion = daoFactory.getConnexion();
            String query ="SELECT * FROM user WHERE username=?;";
            preparedStatement = connexion.prepareStatement(query);
            preparedStatement.setString(1,userName);
            ResultSet resultat = preparedStatement.executeQuery();
            while (resultat.next()) {
                String userPwd = resultat.getString("password");
                userId=resultat.getInt("id");
                if (password.equals(userPwd)) {
                    exist = true;
                }
            }
            resultat.close();
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userId;
    }
}
