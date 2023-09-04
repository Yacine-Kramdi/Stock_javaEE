<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        
       <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
       <c:if test="${param.Nom !=null}">
       <sql:update dataSource="${c}" var="req">
          insert into client value (?,?,?,?);
          
            <sql:param value="${param.id}"/>
            <sql:param value="${param.Nom}"/>
            <sql:param value="${param.tel}"/>
            <sql:param value="${param.email}"/>

     </sql:update>
     <c:redirect url="affichclient.jsp"/>
      </c:if>
  

             <nav class="navbar navbar-expand-sm bg-dark">

                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link" href="home.jsp" style="color:yellow;">Retour</a>
                    </li>
                  </ul>
               </nav>
    
  
    

    </body>
</html>
