<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
           
           <c:if test="${param.Date_facteur != null}">
                <sql:update dataSource="${c}" var="req">
                         insert into facteur value (?,?,?,?);
                      <sql:param value="${param.N_facteur}"/>
                         <sql:param value="${param.id_client}"/>
                      <sql:param value="${param.Date_facteur}"/>
                      <sql:param value="${param.Mode_paiment}"/>

                </sql:update>
        
                     <c:redirect url="afficherfacteur.jsp"/>

                </c:if>
                         
                         
                <nav class="navbar navbar-expand-sm bg-dark">

                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link" href="home.jsp" style="color:yellow;">Retour</a>
                    </li>
                  </ul>
               </nav>
                         
                         
                         
                         
            
                             
                             
    <style>
           .container{
               margin-top: 90px;
                 justify-content:center;
                text-align: center;
                background: #f53677;
                border-radius: 15px;
                  background: black;
                  height: 540px;
            }
            .btn{
                width: 130px;
               
            }
            .form-group{
                color: white;
                font-size: 20px;
                
            }
            .nav-link{
                font-size: 30px;
            }
            
    </style>
        
        </div>
    </body>
</html>
