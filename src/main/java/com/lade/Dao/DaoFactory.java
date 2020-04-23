package com.lade.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DaoFactory {
    private static final DaoFactory instance = new DaoFactory();
    String url = "jdbc:mysql://localhost:3306/ladedb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false&allowPublicKeyRetrieval=true";
    String user = "root";
    String passwd = "ocpizza";

    public static final DaoFactory getInstance() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver O.K.");
        } catch (ClassNotFoundException e) {
        }
        return instance;
    }

    public Connection getConnexion() throws SQLException {
        return DriverManager.getConnection(url, user, passwd);

    }

    public SpotDao getSpotDao() {
        return new SpotDaoImpl(this);
    }

    public SectorDao getSectorDao() {
        return new SectorDaoImpl(this);

    }

    public RouteDao getRouteDao() {
        return new RouteDaoImpl(this);

    }
    public UserDao getUserDao(){
        return new UserDaoImpl(this);

    }
}
