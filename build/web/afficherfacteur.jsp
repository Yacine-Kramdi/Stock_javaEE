<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
           <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
           
           
            <sql:query dataSource="${c}" var="affichage" >
                 select * from facteur as fact,client where fact.id_client=client.id_client order by N_facteur desc;
          </sql:query>
            
                  <nav class="navbar navbar-expand-sm bg-light">

                   <ul class="navbar-nav">
                   
                       <a class="nav-link" href="home.jsp"  style="color:black">Retour</a>
                    
                    </ul>
                   </nav>
                 
                 
          <div class="container">
           <table class="table">
             <thead>
		 <tr>
                     
                      <td>Nom de client</td>
                     <td>Numero de facture</td>
                     <td>Date de Facture</td>    
                     <td>Mode de paiment</td>
                     <td>Ligne_facture</td>
                     <th colspan="2">supprimer</th>
                   
                 </tr>
               </thead>
               
              <tbody>
                <c:forEach var="l" items="${affichage.rows}">

                    <tr>
                       
                         <td><strong><c:out value="${l.Nom}"/> </strong></td>
                      <td><strong><c:out value="${l.N_facteur}"/> </strong></td>
                        <td><c:out value="${l.Date_facteur}"/></td>
                        <td><c:out value="${l.Mode_paiment}"/></td>
                           
                        <td>

              <sql:query dataSource="${c}" var="selecte" >
                 select*from article;
          </sql:query>
                 
                 
     <form action="ajouterligne.jsp">
           <label for="email"><strong>Selectionner votre article</strong></label>
         <select class="form-select" aria-label="Default select example" name="Ref_article">
    <c:forEach var="m" items="${selecte.rows}">
        
      <option value="${m.Ref_article }"><c:out value="${m.Nom_article}"/> <c:out value="${m.prix_vente}"/> DA </option>
    </c:forEach>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
  
         </select>
         
    
       <input class="form-control form-control-lg" type="hidden" name="N_facteur"  placeholder="numéro de télephone..." aria-label=".form-control-lg example" value="${l.N_facteur}">
  <label for="email"><strong>Quantite_vendue</strong></label>
  <input class="form-control form-control-lg" type="number" name="quantite_vendue" max="10" min="1" aria-label=".form-control-lg example" value="1">
       <br>
           <button class="btn btn-secondary" type="submit" data-bs-dismiss="modal">Ajouter</button>
                       </form>

    <sql:query dataSource="${c}" var="aff" >
         select quantite_vendue,Nom_article,prix_vente,SUM(quantite_vendue)as quantite, SUM(quantite_vendue*prix_vente) as prix ,(SUM(quantite_vendue*prix_vente))as prix_total from article as ar,ligne_facteur as li where ar.Ref_article=li.Ref_article  and li.N_facteur=${l.N_facteur} Group by li.Ref_article;
          </sql:query>
         <table class="table">
                <tbody>
                 <c:forEach var="s" items="${aff.rows}">
                     
                           <tr>
                               
                            <td><c:out value="${s.Nom_article }"/></td>
                            <td>Prix <c:out value="${s.prix_vente }"/> DA / <c:out value="${s.quantite }"/> unité   <div class="prix"   style="color:green;"    style="font-size:25px"> prix  <c:out value="${s.prix }"/> DA  </div>  </td>
                               
                     
                           </tr> 
           
                 </c:forEach>
                       
                 </tbody>
                 
                 </table>
         
            <sql:query dataSource="${c}" var="yy" >


  
    
Select sum(T.prix_total) as total From 
(select SUM(quantite_vendue*prix_vente) as prix_total from article as ar,ligne_facteur as li where ar.Ref_article=li.Ref_article  and li.N_facteur=${l.N_facteur} Group by li.Ref_article) T;

          </sql:query>
         <table class="table">
                  <tbody> 
                     Prix Total :
            <c:forEach var="m" items="${yy.rows}">
                     
                           <tr>
      
                               <td><div style="color:red"><c:out value="${m.total }"/> DA </div></td>
                          
                               
                     
                           </tr> 
           
                 </c:forEach>
         </tbody>
         </table>
          
                           </td>
                         <c:url value="deletefacteur.jsp" var="lien">
                             <c:param name="N_facteur" value="${l.N_facteur}"/>
                         </c:url>
                         <td>
                             <a href="${lien}">  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
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
              background: black;
              border-radius: 9px;
              color: white;
           }
        
            .nav-link{
                font-size: 30px;
               
              
                 border-radius: 9px;
                 color:blue;
               
            }
              a{
                text-decoration: none;
            }
              
              
              </style>    
                 
                 
              
    </body>
</html>
