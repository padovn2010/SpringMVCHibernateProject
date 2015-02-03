<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Welcome to Spring Web MVC + Hibernate project</title>
    </head>
    
    <body>
        
        <h1> Log in here! </h1>
        
        <form action="userinfo.htm" method="post">
            
            <table>
                <tr align="left">
                    <th style="color: red"> ${errorMsg} </th>
                    <th> <a href="register.htm"> ${register} </a> </th>
                </tr> 
            </table>
            
            <table>        
                
                <tr align="left">
                    <th> Username: </th> 
                    <th> <input type="text" name="username"> </th>
                </tr>                
                <tr align="left">
                    <th> Password: </th> 
                    <th> <input type="text" name="password"> </th>
                </tr>
                
                <tr></tr><tr></tr><tr></tr>
                
                <tr align="left">  
                    <th> <input type="submit" value="Login"> <th/> 
                </tr>
                
            </table>                         
        </form>
        
    </body>
</html>
