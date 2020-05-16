package com.codegym.service;

import com.codegym.model.SignupAccount;

import java.sql.*;
import library.templatepattern.connect.*;
import library.templatepattern.connect.mysql.MySQLConnect;
import library.templatepattern.execute.*;
import library.templatepattern.execute.mysql.*;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class DatabaseServiceImpl implements DatabaseService {
    private static final String jdbcURL = "jdbc:mysql://localhost:3306/casestudy3_database";
    private static String userDB = "root";
    private static String passDB = "11100001";
    private static Connection conn;

    public DatabaseServiceImpl(){}

    public void registerAccountToDB(SignupAccount account, String emailAddress) {
        String username = account.getUsername();
        String password = account.getPassword();
        String fullname = account.getFullname();
        String email = account.getEmail();
        String address = account.getAddress();
        String phonenumber = account.getPhonenumber();

        try {
            MySQLConnect mysqlConnect = new MySQLConnect(jdbcURL);
            mysqlConnect.setDBDriver();
            mysqlConnect.setCredentials(userDB, passDB);
            conn = mysqlConnect.openConnection(jdbcURL);

            String sql_query = "insert into casestudy3_database.account(id_role, username, password, fullname, phonenumber, email, address, active, online)" +
                                        "values('" +
                                                    "2 " +
                                                    username + "', '" +
                                                    password + "', '" +
                                                    fullname + "', '" +
                                                    phonenumber + "', " +
                                                    email + "', '" +
                                                    address + "', '" +
                                                    "0, 0" +
                                                  ");";

            System.out.println(sql_query);

            MySQLExecute executeObj = new MySQLExecute(conn);
            executeObj.execute(sql_query);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.err.println("Error can not close Exception !!!");
                ex.printStackTrace();
            }
        }

        // Sending mail to user activation ...
        SendingEmail sendingEmail = new SendingEmail(emailAddress);
        sendingEmail.sendEmail();
    }

    private class SendingEmail {
        private String userEmail;

        public SendingEmail(String userEmail) {
            this.userEmail = userEmail;
        }

        public void sendEmail(){
            String email = "cun.kin1985@gmail.com";
            String password = "quy21011985";

            Properties properties = new Properties();
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.starttls.enable", "true");
            properties.put("mail.smtp.host", "smtp.gmail.com");
            properties.put("mail.smtp.port", "587");

            Session session = Session.getDefaultInstance(properties, new Authenticator(){
                protected PasswordAuthentication getPasswordAuthentication(){
                    return new PasswordAuthentication(email, password);
                }
            });

            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(email));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
                message.setSubject("Email kích hoạt tài khoản Website du lịch");
                message.setText("Để sử dụng hết chức năng Website hãy kích hoạt tài khoản vừa đăng kí ");
                message.setText("Bằng cách click vào đường link dưới đây: " +
                                       "http://localhost:9999/login?action=activation&userEmail=" + userEmail);
                Transport.send(message);
            } catch (Exception ex){
                System.out.println("Sending mail ....." + ex);
            }
        }
    }

    public void updateActiveStatus(String userEmail) {
        try {
            MySQLConnect mysqlConnect = new MySQLConnect(jdbcURL);
            mysqlConnect.setDBDriver();
            mysqlConnect.setCredentials(userDB, passDB);
            conn = mysqlConnect.openConnection(jdbcURL);

            String sql_query = "update casestudy3_database.account set active = 1 where email = '" + userEmail + "';";

            System.out.println(sql_query);

            MySQLExecute executeObj = new MySQLExecute(conn);
            executeObj.execute(sql_query);
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.err.println("Error can not close Exception !!!");
                ex.printStackTrace();
            }
        }
    }

    public boolean checkAccountExists(String username, String password) {
        try {
            MySQLConnect mysqlConnect = new MySQLConnect(jdbcURL);
            mysqlConnect.setDBDriver();
            mysqlConnect.setCredentials(userDB, passDB);
            conn = mysqlConnect.openConnection(jdbcURL);

            String sql_query = "select username, password from casestudy3_database.account where username =  '" + username + "' and password = '" + password + "' and active = 1;";
            System.out.println(sql_query);

            MySQLExecute executeObj = new MySQLExecute(conn);
            ResultSet resultSet = executeObj.execute(sql_query);

            try {
                if (resultSet.next()) {
                    return true;
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                System.err.println("Error can not close Exception !!!");
                ex.printStackTrace();
            }
        }
        return false;
    }
}
