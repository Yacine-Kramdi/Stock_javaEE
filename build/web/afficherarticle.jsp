<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>
 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

           <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
           
           
             <sql:query dataSource="${c}" var="affichage" >
                select*from article;
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
                     <td>Article</td>
                     <td>Quantité</td>    
                     <td>Prix</td>
                      <td>Ajouter plus d'unité</td>
                     <th colspan="2">supprimer</th>
                   
                 </tr>
               </thead>
               
              <tbody>
                <c:forEach var="l" items="${affichage.rows}">

                    <tr>
                       <td><c:out value="${l.Nom_article}"/></td>
                        <td><c:out value="${l.quantite}"/> <c:out value=" Unité"></c:out>
                         <td><c:out value="${l.prix_vente}"/> <c:out value=" DA"></c:out>   
                             
                          <td>
                          
                          <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal<c:out value="${l.Ref_article}"/>">
Ajouter plus d'unité
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal<c:out value="${l.Ref_article}"/>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Ajouter plus d'unité</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <form action="ajouterunit.jsp">
      <div class="mb-3">

  <input type="hidden" class="form-control" name="Ref_article" id="exampleFormControlInput1" placeholder="name@example.com" value="<c:out value="${l.Ref_article}"/>">
</div>
          <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Nombre à ajouter</label>
  <input type="number" class="form-control" name="q" id="exampleFormControlInput1"  value="2">
</div>
    <button type="submit" class="btn btn-primary mb-3">Ajouter</button>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
     
      </div>
    </div>
  </div>
</div>
                          
                          
                          
                          </td>
                                  
                            <c:url value="deletearticle.jsp" var="lien">
                             <c:param name="Ref_article" value="${l.Ref_article}"/>
                         </c:url>
                
                         <td>
                             <a href="${lien}"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
  <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
</svg> supprimer</a>
                         </td>
                         
                    </tr>
              </c:forEach>
         </tbody>
      </table>
              
              
            
  
       
     </div>
               
                
      
                
         <style>
          thead{
              font-size: 25px;
              background:black;
              border-radius: 9px;
              color: white;
           }
              .nav-link{
                font-size: 30px;
           
              
                 border-radius: 9px;
                 color: yellow;
               
            }
            a{
                text-decoration: none;
            }
       </style>
       
    </body>
</html>
