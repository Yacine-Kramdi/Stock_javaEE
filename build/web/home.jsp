<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${empty sessionScope.userr}">
     <c:redirect url="login.jsp"/>
</c:if>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
       <div class="side-bar">
            <div class="logo-name">
                <sql:setDataSource var="c" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jee"
                   user="root" password=""/>
                <h1> WELCOME  </h1>
      
              
            </div>
            <ul>
                <li data-bs-toggle="modal" data-bs-target="#exampleModal" ><a> <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
</svg> Ajouter Client</a></li>
                <li data-bs-toggle="modal" data-bs-target="#exampleModal1" ><a><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cart-plus" viewBox="0 0 16 16">
  <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
  <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
</svg> Ajouter Article</a> </li>
                <li data-bs-toggle="modal" data-bs-target="#exampleModal2" ><a><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-journal-plus" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 5.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V10a.5.5 0 0 1-1 0V8.5H6a.5.5 0 0 1 0-1h1.5V6a.5.5 0 0 1 .5-.5z"/>
  <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
  <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
</svg> Ajouter Facture</a> </li>
             
            </ul>
        </div>
        
        <div class="container">
            
        
            <div class="header">
                <div class="nav">
                    
                  <ul>
                    <li> <a href="affichclient.jsp"> <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
</svg> Client</a></li>
                    <li><a href="afficherarticle.jsp"> <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg> Article</a></li>
                    <li> <a href="afficherfacteur.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-journal" viewBox="0 0 16 16">
  <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
  <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
</svg> Facture</a></li>
                    
                   <a  class="btn"  href="logout.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
</svg> déconnexion</a>
                  </ul> 
                    
               </div>
                
            </div>
            
            
            Kramdi Yacine yes
            
        </div>
     
    
        
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: sans-serif;
            }
            body{
                min-height: 100vh;
                background-image: url("../img/1.jpg");
            }
          .side-bar li a{
                list-style: none;
                 color: white;
                 margin-top: 40px;
                 text-decoration: none;
                 font-size: 30px;
            }
            h1{
                margin-top: 60px;
                color: yellow;
            }
            
            
             h1:hover{
              
                color:white;
            }
            .side-bar{
                position: fixed;
                background:black;
             
                width: 20vw;
                min-height: 100vh;
                display: flex;
                flex-direction:column;
            }
            .side-bar .logo-name{
                height: 20vh;
                display: flex;
                justify-content:center;
                 align-items:center;
                 
            }
            .side-bar li{
                font-size: 24px;
                padding: 10px 45px;
                display: flex;
               justify-content:center;
                align-items:center;
            }
            .side-bar li :hover{
               
             color:  yellow;
            }
            .container{
                position: absolute;
                right: 0;
                width: 80vw;
                height: 100vh;
                background: white;
                
            }
            .container .header{
                position: fixed;
                top: 0;
                right: 0;
                width: 80vw;
                height: 15vh;
                background: white;
                display: flex;
                align-items:center;
                justify-content:space-between;
                box-shadow: 0 4px 8px 0 rgb(0,0,0,0.2)
            }
            container .header .nav{
                width: 90%;
                display: inline-block;
                 align-items:center;
            }
            
           .nav li {
                display: inline-block;
                padding: 15px 20px;
                font-size: 35px;
                margin-right: 100px;
                padding-right: 70px;
                
                
                
            }
           .nav li a{
                transition: alt 0.3 ease 0s;
                text-decoration: none;
                color: black;
            }
             .nav li a:hover{
                color: yellow;
               border-radius: 6px;
                
            }
           .btn{
                padding: 15px 35px;
                background: black;
                border-radius: 5px;
                text-decoration: none;
                cursor: pointer;
                align-items:center;
                color: yellow;
                text-decoration-line: none;
                text-decoration: none;   
             
            }
            a.btn:hover{
                color: black;
            }
            .btn:hover{
                color: yellow;}
        </style>
      
          
      

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Ajouter Client</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
     <form action="ajouterclient.jsp">
   <label for="text"><strong>Nom:</strong></label>
       <input class="form-control form-control-lg" type="text"  name="Nom" placeholder="nom..." aria-label=".form-control-lg example" required>
           <br>
            <label for="text"><strong>Telephone:</strong></label>
      
            <input class="form-control form-control-lg" type="text" name="tel"  placeholder="numéro de télephone..." aria-label=".form-control-lg example" required>
                     <br>
  <label for="email"><strong>Email:</strong></label>
       <input class="form-control form-control-lg" type="email" name="email" placeholder="email.." aria-label=".form-control-lg example" required>
       <br>
           <button class="btn btn-secondary" type="submit" data-bs-dismiss="modal">Ajouter</button>
                       </form>

      </div>

      <div class="modal-footer">
     
    
      </div>
    </div>
  </div>
</div>
     
<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Ajouter Article</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <form action="ajouterarticle.jsp">
           <label for="text"><strong>Article:</strong></label>
       <input class="form-control form-control-lg" type="text" name="Nom_article" placeholder="article..." aria-label=".form-control-lg example">
                <br>
                <label for="text"><strong>Quantite:</strong></label>
       <input class="form-control form-control-lg" type="number"  name="quantite" placeholder="quantité..." aria-label=".form-control-lg example">
                <br>
         <label for="email"><strong>Prix:</strong></label>
       <input class="form-control form-control-lg" type="number" name="prix_vente" placeholder="prix..." aria-label=".form-control-lg example">
       <br>
             <button class="btn btn-secondary" type="submit" data-bs-dismiss="modal">Ajouter</button>
          </form>
                </div>

            <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
      


<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Ajouter Facteur</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
             <sql:query dataSource="${c}" var="selecte" >
                 select*from client;
          </sql:query>
                 
         <form action="ajouterfacteur.jsp">
             
                   <label for="text"><strong>Sélectionner le client :</strong></label>
             <select class="form-select" aria-label="Default select example" name="id_client">
                        
    <c:forEach var="m" items="${selecte.rows}">
        
      <option value="${m.id_client }"><c:out value="${m.Nom}"/></option>
    </c:forEach>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
  
         </select>
                  <br>
              <label for="text"><strong>Date de facteur:</strong></label>
       <input class="form-control form-control-lg" type="date"  name="Date_facteur" placeholder="date..." aria-label=".form-control-lg example">
             <br>
<label for="text"><strong>Mode de paiment</strong></label>
   
  <select class="form-select" name="Mode_paiment"  aria-label="Default select example">
  <option selected value="monnaie">monnaie</option>
  <option value="cartes bancaires">cartes bancaires</option>
  <option value="cheques">chèques</option>
  <option value="virements">virements</option>
    
      <option value="electronique">électronique</option>
</select>
      
       <br>
       
        <button class="btn btn-secondary" type="submit" data-bs-dismiss="modal">Ajouter</button>
    
          </form> 
              </div>
          <div class="modal-footer"></div>
   
      </div>
    </div>
  </div>
</div>




        
<style>
    
    li{
        cursor: pointer;
        color:white;
    }
</style>
      
    </body>
</html>
