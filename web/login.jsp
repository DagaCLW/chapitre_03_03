<%-- 
    Document   : login
    Created on : 12 mars 2019, 13:25:26
    Author     : Utilisateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="entete.html"  %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
    
        <%!
        boolean verifie(String login, String password){
        return (login!=null && login.equals("elodie1234")
                && password!=null && password.equals("moncomptetwitter"));
        }
        %>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login JSP Page</title>
    </head>
    
    <c:set var="compteur" value="42"/>
    
    <body>
        <h1>Vérification de l'utilisateur</h1>
        <%
                    if  (verifie(request.getParameter("login"),request.getParameter("password"))){
                   
            getServletContext().setAttribute("pn1", "Elodie");
            getServletContext().setAttribute("n1", "Laps");
            getServletContext().setAttribute("pn2", "Raphael");
            getServletContext().setAttribute("n2", "Zighmi");
            getServletContext().setAttribute("pn3", "Sophie");
            getServletContext().setAttribute("n3", "Romain");
            getServletContext().setAttribute("pn4", "Geoffrey");
            getServletContext().setAttribute("n4", "Raggioli");
            
            request.getSession().setAttribute("utilisateur", "Elodie Laps");
            
            
            RequestDispatcher rs = request.getRequestDispatcher("index.html");         // Je travaille à l'intérieur même du serveur 
            rs.forward(request, response);

        } else{
        %>
        <div>Dis moi si tu as le droit de passer ici...</div>
        <form action="login.jsp" method="POST">                                      <!-- Pour éviter le passage du login et mdp dans l'URL, changer méthode POST utilisée-->
                <input type="text" name="login" value="elodie1234"/>            
                <input type="text" name="password" value="moncomptetwitter"/>
                <input type="submit"/>    
            </form>
        <%
                
                    }
            %>
    </body>
</html>
