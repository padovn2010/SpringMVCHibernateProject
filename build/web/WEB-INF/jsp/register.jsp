<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Welcome to Spring Web MVC + Hibernate project</title>
    </head>
    
    <body>
        
        <h1> Create a new account here! </h1>
        
        <form action="confirmation.htm" method="post">
            
            <table>
                <tr>
                    <th align="left"> Username: </th> 
                    <th> <input type="text" name="username" value=${username}> </th> 
                </tr>                
                <tr>
                    <th align="left"> Password: </th> 
                    <th> <input type="text" name="password" value=${password}> </th>
                </tr>
                <tr>
                    <th align="left"> DOB: </th> 
                    <th> <input type="text" name="dob" value=${dob}> </th>
                </tr>
                <tr>
                    <th align="left"> Email: </th> 
                    <th> <input type="text" name="email" value=${email}> </th>
                </tr>
                <tr>
                    <th align="left"> Full Name: </th> 
                    <th> <input type="text" name="fullname" value=${fullname}> </th>
                </tr>
                
                <tr></tr><tr></tr><tr></tr>
                
                <tr>  
                    <th> <input type="submit" value="Register"> <th/> 
                    <th style="color: red"> ${errorMsg} <th/>
                    <th>  <a href="login.htm"> ${visible} </a> </th>                     
                </tr>
                
            </table>
            
        </form>
        
    </body>
</html>
