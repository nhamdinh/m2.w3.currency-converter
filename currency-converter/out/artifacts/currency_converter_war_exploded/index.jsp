<%--
  Created by IntelliJ IDEA.
  User: tom
  Date: 06/11/2019
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String result = request.getAttribute("result") + "";
  String rate = request.getAttribute("rate") + "";
  String usd = request.getAttribute("usd") + "";
  if (result.equals("null")) {
    result = "";
    rate = "";
    usd = "";
  }
  ;
%>
<html>
<head>
  <title>Converter</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/convert">
  <fieldset style="width: fit-content; height: fit-content">
    <legend><h2>Converter</h2></legend>
    <p>Rate: &nbsp <input type="text" name="rate" value=<%=rate%>></p>
    <p>USD: &nbsp <input type="text" name="usd" value=<%=usd%>></p>
    <p><input type="submit" value="Convert"></p>
  </fieldset>
</form>
<form>
  <p>Result : <input disabled type="text" name="result" value=<%=result%>>&nbsp VND</p>
</form>
</body>
</html>