<%@ page import="database.databaseAccess" %><%--  Created by IntelliJ IDEA.  User: kimchy  Date: 16/10/20  Time: 20:47  To change this template use File | Settings | File Templates.--%><%@ page contentType="text/html;charset=UTF-8" language="java" %><html><head>    <title>appointment</title></head><h2>    Appointment Making</h2><%    String userId = request.getParameter("userId");    String[][] result = new databaseAccess().searchService();%><body><form action="booking" method="post">    <h4>Service Type:</h4>    <label required>        <input type="radio" name="serviceType" value="<%=result[0][0]%>" checked><%=result[0][0]%><br>    </label>    <%        for(int i = 1; i < result[0].length; i++){    %>    <label>        <input type="radio" name="serviceType" value="<%=result[i][0]%>"><%=result[i][0]%><br>    </label>    <%        }    %>    <input type="text" placeholder="Prefer Time" name="time"><br>    <input type="text" placeholder="location" name="location">    <input type="checkbox" name="checkBox">Same as My Home Address<br>    <input type="text" placeholder="message" name="message"><br>    <button type="submit" name="userId" value="<%=userId%>">complete</button></form></body></html>