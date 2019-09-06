<%-- 
    Document   : validation
    Created on : Jun 5, 2019, 12:11:29 AM
    Author     : PC
--%>




<%@page import="turistickaagencija.Logovanje"%>
<%@page import="java.util.List"%>

<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>

<%
    
    String users = request.getParameter("username");
    String pass = request.getParameter("password");
    String err = null;
    
    boolean login = false;
    
    
//    EntityManagerFactory emf = Persistence.createEntityManagerFactory("turistickaAgencija_TuristickaAgencija_war_1.0PU");
//
//    EntityManager em = emf.createEntityManager();
//    List<Logovanje> log=null ;

//    log = em.createQuery("SELECT l FROM Logovanje l ").getResultList();
    Connection conn;
    String host="jdbc:mysql://localhost:3306";
    String shema = "turisticka_agencija";
    String user = "dule";
    String password ="123";
    String url = host + "/" + shema + "?autoReconnect=true&useSSL=false";
    String uspeh = "";
    try{
    conn = DriverManager.getConnection(url, user, password);
    ResultSet result = conn.createStatement().executeQuery("SELECT * from logovanje WHERE log_username = '" + users + 
            "' AND log_password = '" + pass + "'");
    
    while(result.next()){
    pageContext.setAttribute("Uspesno ste se logovali", uspeh);
    
    login = true;
//    for (Logovanje l : log) {
//        // out.println(u.getUsrName());
//        if (l.getLogUsername().equals(user) && l.getLogPassword().equals(pass)) {
//            login = true;
//            break;
//
//        } else {
//            return;
//        }
//    }
    
    if (login) {
        System.out.println("USPEH");
        response.setHeader("Refresh", "5;url=http://localhost:8080/TuristickaAgencija/pages/registracija.jsp"); 
//        String redirectURL = "http://localhost:8080/TuristickaAgencija/pages/registracija.jsp";
//        response.sendRedirect(redirectURL);
    }
                  
    
    }
    pageContext.setAttribute("Molim vas pokusajte ponovo", err);
      err ="Molim vas pokusajte ponovo";
    }
    catch(Exception e){
       e.printStackTrace();
    }

%>
<div>
<span class="help-block">
    <%
        request.getParameter(uspeh);
    %>
</span>
</div>
<div>
<span class="help-block">
    <%
        request.getParameter(err);
    %>
</span>
</div>
<!--da probam sa jspl da uradim ovo jer je lakse sa time -->