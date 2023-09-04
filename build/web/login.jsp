
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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


<c:if test="${not empty param.login}">
     <c:if test="${param.user == 'admin' and param.pwd=='admin'}">
        <c:set var="userr" value="${param.user}" scope="session"/>
        <c:redirect url="home.jsp"/>
            
     </c:if>
        <c:if test="${param.user != 'admin' or param.pwd !='admin'}">
             <c:redirect url="login.jsp"/>
               <h1> <c:out value="mot de passe incorrect"/>     </h1>
     
        </c:if>
</c:if>

<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <section>
            <div class="imgBx">
                <a href="login.jsp" > <img src="./1.jpg"></a>
           
            </div>
            
            
            <div class="contentBx">
                <div class="formBx">
                    <h2>Login</h2>
                    <form action="login.jsp" method="Post">
                        
                        <div class="inputBx">
                            <span>username</span>
                            <input type="text" name="user">
                        </div>
                        
                        <div class="inputBx">
                            <span>password</span>
                            <input type="password" name="pwd">
                        </div>
                        
                        <div class="inputBx">
                           
                            <input type="submit" name="login" value="login">
                        </div>
                        
                    </form>
                    <h3><strong> Mr Salhi web site media</strong></h3>
                    <ul class="sci">
                        
                        <a href=" http://d-salhi.univ-boumerdes.dz/"> <strong>Show</strong> </a>
                        
                    </ul>
                </div>
           </div>
        </section>
        
        <style>
            
            *{
                margin: 0;
                padding: 0;
                font-family: 'Popins', sans-serif;
                box-sizing: border-box;
            }
            section{
                position: relative;
                width: 100%;
                height: 100vh;
                display: flex;
            }
            section .imgBx{
                position: relative;
                width: 50%;
                height: 100%;
                
            }
            section .imgBx :before{
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: black;
                z-index: 1;
                mix-blend-mod:screen;
            }
            section .imgBx img{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                object-fit: cover;
                
            }
            section .contentBx{
                display: flex;
                width: 50%;
                height: 100%;
                justify-content:center;
                align-items:center;
            }
            section .contentBx .formBx{
                width: 50%;
                
            }
            section .contentBx .formBx h2{
                color: black;
                font-weight: 600;
                font-size: 1.5em;
                text-transform: uppercase;
                margin-bottom: 20px;
                border-bottom: 4px solid yellow;
                display: inline-block;
                lef-spacing:1px;
                
            }
            section .contentBx .formBx .inputBx{
                margin-bottom: 20px;
                
            }
             section .contentBx .formBx .inputBx span{
                margin-bottom: 5px;
                font-size: 16px;
                display: inline-block;
                color: black;
                font-weight: 300;
                letter-spacing: 1px;
           
            }
            section .contentBx .formBx .inputBx input{
                width: 100%;
                padding: 10px 20px;
                outline: non;
                font-weight: 400;
                border: 1px solid #607d8b;
                font-size: 16px;
                latter-spacing:1px;
                color: #607d8b;
                background: transparent;
                border-radius: 30px;
            }
            section .contentBx .formBx .inputBx input[type="submit"]{
                background: black;
                color:#fff;
                outline: non;
                border: none;
                font-weight: 500;
                cursor: pointer;
                
            }
            section .contentBx .formBx .inputBx input[type="submit"]:hover{
                background: yellow;
            }
            section .contentBx .formBx  h3{
                color:black;
                margin: 80px 0 10px;
                font-weight: 500;
                text-align: center;
                
            }
            section .contentBx .formBx .sci a{
                display: flex;
                justify-content:center;
                text-decoration: none;
                font-size: 15px;
                color: yellow;
                font-size: 20px;
                
            }
            @media(max-width:768px){
                section .imgBx{
                    width: 100%;
                    height: 100%;
                    top: 0;
                    left: 0;
                    
                }
                section .contentBx{
                    display: flex;
                    justify-content:center;
                      width: 100%;
                     height: 100%;
                    z-index: 1;
                }
            }
         


        </style>
     
            
            
    </body>
</html>
