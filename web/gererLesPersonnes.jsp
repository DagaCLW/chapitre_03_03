<%-- 
    Document   : gererLesPersonnes
    Created on : 12 mars 2019, 16:16:08
    Author     : Utilisateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= getServletConfig().getInitParameter("formation") %></title>
        
    </head>
        
    
    <body>
        
        <%!
            String prenomTitre="Prénom";
            String nomTitre="NOM";
        %>
            <h1>Utilisateur connecté : <%= request.getSession().getAttribute("utilisateur") %></h1>
            <%
                if (request.getMethod().equals("GET")) {

            %>
       
            <table>");
                <tr><th><%=prenomTitre%></th><th><%=nomTitre%></th></tr>
                <tr>
                    <td><%= getServletContext().getAttribute("pn1")%></td>
                    <td><%= getServletContext().getAttribute("n1")%></td>

                </tr>
                <tr>
                    <td><%= getServletContext().getAttribute("pn2")%></td>
                    <td><%= getServletContext().getAttribute("n2")%></td>
                    
                </tr>
                <tr>
                    <td><%= getServletContext().getAttribute("pn3")%></td>
                    <td><%= getServletContext().getAttribute("n3")%></td>

                </tr>
                <tr>
                    <td><%= getServletContext().getAttribute("pn4")%></td>
                    <td><%= getServletContext().getAttribute("n4")%></td>
                    
                </tr>
                </table>

                out.println("</body>");
                out.println("</html>");

                <%
                } else {
                %>

                <div>Enregistrement bien pris en compte</div>
            
            <%
            }
            %>
    </body>
</html>
