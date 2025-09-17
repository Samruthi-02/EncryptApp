<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <h1>Result</h1>
    
    <% if (request.getAttribute("error") != null) { %>
        <p style="color: red;"><%= request.getAttribute("error") %></p>
    <% } %>
    
    <% if (request.getAttribute("result") != null) { %>
        <p><strong>Result:</strong></p>
        <textarea rows="4" cols="50" readonly><%= request.getAttribute("result") %></textarea>
    <% } %>
    
    <br><br>
    <a href="index.jsp">Go Back</a>
</body>
</html>