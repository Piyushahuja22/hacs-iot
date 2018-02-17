<%-- 
    Document   : index
    Created on : Feb 17, 2018, 3:25:46 PM
    Author     : Ahuja
--%>

<%@page import="com.mongodb.Mongo"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="Connection.MyConnection"%>
<%@page import="com.mongodb.connection.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
           MyConnection myConnection = new MyConnection();
           MongoClient mongoClient = myConnection.getConnection();
           out.println(mongoClient.getDB("test").getCollection("login").count());
        %>
    </body>
</html>
