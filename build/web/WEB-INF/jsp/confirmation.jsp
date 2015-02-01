<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Welcome to Spring Web MVC + Hibernate project</title>
    </head>
    
    <body>
        
        <h1> Confirmation here - you has just created a new account successfully! </h1>
        
        <table>
            <tr align="left">
                <th colspan="2"> Username: </th> <th/>
                <th> ${username} </th>
            </tr>                
            <tr align="left">
                <th colspan="2"> Password: </th> <th/>
                <th> ${password} </th>
            </tr>
            <tr align="left">
                <th  colspan="2"> DOB: </th> <th/>
                <th> ${dob} </th>
            </tr>
            <tr align="left">
                <th  colspan="2"> Email: </th> <th/>
                <th> ${email} </th>
            </tr>
            <tr align="left">
                <th colspan="2"> Full Name: </th> <th/>
                <th> ${fullname} </th>
            </tr>
            
            <tr></tr><tr></tr><tr></tr>
            
            <tr align="left">  
                <th><a href="login.htm"> back </a></th>
            </tr>
            
        </table>
        
        
    </body>
</html>
