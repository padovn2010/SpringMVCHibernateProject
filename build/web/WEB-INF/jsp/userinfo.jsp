<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Welcome to Spring Web MVC + Hibernate project</title>        
        
        <script src="<c:url value="/resources/js/foruserinfo.js" />"></script>
        
        <link href="<c:url value="/resources/css/foruserinfo.css" />" rel="stylesheet">        
<!--    <style>
        .zero{
            display: none; 
        } 
    </style>-->
    
</head>

<body>
    
    <h1> User info management! </h1>
    
    <table>
        
        <tr align="left">  
            <th colspan="2"><a href="login.htm"> logout </a></th> <th/>
            <th class="1"> <input id="editBtn" type="Button" value="Edit" onclick="edit()"/> </th>
            <th class="zero"> <input id="saveBtn" type="Button" value="Save" onclick="save()"/> </th>
        </tr> 
        <tr></tr>
        
        <tr align="left">
            <th colspan="2"> Username: </th> <th/>
            <th class="1"> ${username} </th>
            <th class="zero"> <input type="text" name="username" value=${username}> </th> 
        </tr>                
        <tr align="left">
            <th colspan="2"> Password: </th> <th/>
            <th class="1"> ${password} </th>
            <th class="zero"> <input type="text" name="password" value=${password}> </th>
        </tr>
        <tr align="left">
            <th  colspan="2"> DOB: </th> <th/>
            <th class="1"> ${dob} </th>
            <th class="zero"> <input type="text" name="dob" value=${dob}> </th>
        </tr>
        <tr align="left">
            <th  colspan="2"> Email: </th> <th/>
            <th class="1"> ${email} </th>
            <th class="zero"> <input type="text" name="email" value=${email}> </th>
        </tr>
        <tr align="left">
            <th colspan="2"> Full Name: </th> <th/>
            <th class="1"> ${fullname} </th>
            <th class="zero"> <input type="text" name="fullname" value=${fullname}> </th>
        </tr>
        
        <tr></tr><tr></tr><tr></tr>
        
    </table>
    
</body>
</html>
