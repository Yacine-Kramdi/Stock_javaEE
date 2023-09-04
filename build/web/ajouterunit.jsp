<%-- 
    Document   : ajouterunit
    Created on : 20 déc. 2022, 22:52:10
    Author     : HIGH TECH
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
      
         <c:set var="x" value="${param.q}"/>
    
         
     <c:set var="y"   value="${param.Ref_article}"/>
     
          <sql:update dataSource="${c}" var="affichage">
      
       update article set quantite=quantite+${x}
                        where Ref_article=${y};
  
     </sql:update>
    <c:redirect url="afficherarticle.jsp"/>
 
        
    </body>
</html>
