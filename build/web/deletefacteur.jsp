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
        
                
       <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
       
       
          <sql:update dataSource="${c}" var="affichage">
             delete from facteur where N_facteur=?;
                <sql:param value="${param.N_facteur}"/>
         </sql:update>
             <c:redirect url="afficherfacteur.jsp"/>
    </body>
</html>
