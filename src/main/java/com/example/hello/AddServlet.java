package com.example.hello;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
public class AddServlet {





<%
    String ClientName=request.getParameter("ClientName");
    String ClientAdress=request.getParameter("ClientAdress");
    String ClientPhoneNr=request.getParameter("ClientPhoneNr");

        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/PZP_Warehouse", "root", "23698741");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into client(ClientName,ClientAdress,ClientPhoneNr) values('"+ClientName+"','"+ClientAdress+"','"+ClientPhoneNr+"')");
        System.out.println("Data is successfully inserted!");
    }
        catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();

    }


        %>
}
*/