<%-- 
    Document   : validation
    Created on : Jun 5, 2019, 12:11:29 AM
    Author     : PC
--%>




<%@page import="turistickaagencija.Connect"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>

<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<link href="../main.css" rel="stylesheet" type="text/css">


<div><c:import url="header.jsp"/></div>
<%
    
    String users = request.getParameter("username");
    String pass = request.getParameter("password");
    
    boolean login = false;

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;

    try{
    con = Connect.getConnection();
   
    stmt = con.createStatement();
    rs = stmt.executeQuery("SELECT * from logovanje WHERE log_username = '" + users + 
            "' AND log_password = '" + pass + "'");

    
    while(rs.next()){
    
    
    login = true;

    if (login) {
        out.print("<div class='container naslov'>");
        out.print("<div style ='font-weight: 900;'>");
        out.print("<h2 style ='color: green;'>");
        out.println("Uspesno logovanje");
        out.print("</h2>");
        out.print("</div>");
        response.setHeader("Refresh", "5;url=../index.jsp"); 
        String ime =rs.getString("log_username");
        int  id = rs.getInt(1);
        session.setAttribute("username", ime);
        session.setAttribute("userId", id);
        out.print("</div>");
    }
                  
    
    }   if(login == false){
        out.print("<div class='container naslov'>");
        out.print("<div style ='font-weight: 900;'>");
        out.print("<h2 style ='color: red;'>");
        out.println("Neuspesno logovanje,Molim vas proverite username i password");
        out.print("</h2>");
        out.print("</div>");
        response.setHeader("Refresh", "5;url=login.jsp");
        out.print("</div>");
    }
    }
    catch(Exception e){
       e.printStackTrace();
    }

%>
<div class="raw foot"><c:import url="footer.jsp"/></div>