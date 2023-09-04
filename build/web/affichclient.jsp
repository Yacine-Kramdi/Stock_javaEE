<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>

     <body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


       <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
        
       
        <sql:query dataSource="${c}" var="affichage" >
          select*from client order by id_client asc;
       </sql:query>
       
        <nav class="navbar navbar-expand-sm bg-light">

                   <ul class="navbar-nav">
                   
                       <a class="nav-link" href="home.jsp" style="color:black">Retour</a>
                    
                    </ul>
                   </nav>
    
       
      <div class="container">
           <table class="table">
             <thead>
		 <tr>
                     <td>Nom</td>
                     <td>Numéro de téléphone</td>    
                     <td>Email</td>
                     <th colspan="2">supprimer</th>
                   
                 </tr>
               </thead>
               
              <tbody>
                <c:forEach var="l" items="${affichage.rows}">

                    <tr>
                        
                      <td><c:out value="${l.Nom}"/></td>                   
                        <td><c:out value="${l.tel}"/></td>
                         <td><c:out value="${l.email}"/></td>
                         
  <c:url value="deletclient.jsp" var="lien">
                             <c:param name="id" value="${l.id_client}"/>
                         </c:url>
                         <td>
                             <a href="${lien}">  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
  <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
</svg> supprimer </a>
                         </td>
                    </tr>
              </c:forEach>
         </tbody>
      </table>
              
              
            
  
       
     </div>
                   
          
          
          
          
          
          
          
          
       
       
       
       
       <style>
           
           a{
                text-decoration: none;
            }
            
          thead{
              font-size: 25px;
              background: black;
              border-radius: 9px;
              color: white
           }
              .nav-link{
                font-size: 30px;
            
              
                 border-radius: 9px;
                 color: yellow;
               
            }
           
       </style>
           
    </body>
</html>
