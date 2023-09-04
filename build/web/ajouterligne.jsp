<%-- 
    Document   : ajouterligne
    Created on : 18 déc. 2022, 21:23:10
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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>
 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
  
  
      <nav class="navbar navbar-expand-sm bg-light">

                   <ul class="navbar-nav">
                   
                       <h3>  <a class="nav-link" href="afficherfacteur.jsp" style="color:black">Retour</a></h3>
                    
                    </ul>
                   </nav>
  

  
     <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
     <c:set var="x" value="${param.quantite_vendue}"/>
    
         
     <c:set var="y"   value="${param.Ref_article}"/>
     
     
    
    
          <sql:query dataSource="${c}" var="affichage" >
 select *,COUNT(*) as com from article where Ref_article="${y}" and quantite>=${x} ;

          </sql:query>
                    

                   
                 
        
                  
                 <c:forEach var="l" items="${affichage.rows}">

                     <tr>
                        
                      
                      <c:set var="com"  value="${l.com}"/>
                      
                    
                        
                           </tr>
         
         </c:forEach>
                           </tbody>
                 
                 </table>
                        
                      
                         
                         <br>
                         
               
                    <br>
                         <br>
                              <br>
                              
                    <c:if test="${com ==0}">
                      <div class="alert alert-danger" role="alert">


                        <h1>     <c:out  value="veuillez vérifier votre qauntité demander peut être dépasser dans le stock  ou bien votre stock est vide de l'article demandé"/></h1>   
                     </div> 
                     <h4>on peut pas ajouter cette ligne</h4>
                    </c:if> 
                              
                                    <br>
                    <c:if test="${com ==1}">
                        
                 <sql:update dataSource="${c}" var="req" >
                    
                        update article set quantite=quantite-${x}
                        where Ref_article=${y};
                          </sql:update>
                           
       <c:if test="${param.Ref_article != null}">
           
                <sql:update dataSource="${c}" var="req" >
                    
                         insert into ligne_facteur value (?,?,?);
                     <sql:param value="${param.Ref_article}"/>
                     <sql:param value="${param.N_facteur}"/>
                     <sql:param value="${param.quantite_vendue}"/>

                </sql:update>
        
             

                </c:if>
                             <c:redirect url="afficherfacteur.jsp"/>
                        
                    </c:if> 
                    
                    
         
         
     
  
     
    </body>
</html>
