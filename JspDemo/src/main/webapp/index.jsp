<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP demo</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>

	<h1>JSP</h1>
    <% 
    int i = 2; // Default value of i
    // Parse and assign the value from the request parameter if available
    if (request.getParameter("no") != null) {
        i = Integer.parseInt(request.getParameter("no"));
    }
    %>

    <% 
        // Check if i is even
        if (i % 2 == 0) {
    %>
        <!-- This block will only display if i is even -->
        <div class="display">
            <p><b>JSP</b> technology is used to create web applications just like Servlet technology. It can be thought of as an extension to Servlet because it provides more functionality than Servlet, such as expression language, JSTL, etc.</p>
            <p>A JSP page consists of HTML tags and JSP tags. The JSP pages are easier to maintain than Servlets because we can separate design and development. It provides additional features such as Expression Language, Custom Tags, etc.</p>
            <h1>JSP Tags</h1>
            <ul>
                <li>Declaration tag</li>
                <li>Expression tag</li>
                <li>Scriptlet tag</li>
                <li>Directive tag</li>
            </ul>
            <p><b>Scriptlet tag : </b> The code placed within the JSP scriptlet tag is executed as Java code on the server. Example:
                <pre>Syntax: &lt;% Java code %&gt;</pre>
            </p>
            <p><b>Declaration tag : </b> The code written inside the JSP declaration tag is placed outside the `service()` method of the auto-generated servlet.
                <pre>Syntax: &lt;%! field or method declaration %&gt;</pre>
            </p>
            <p><b>Expression tag : </b> The JSP expression tag is used to output a value to the client.
                <pre>Syntax: &lt;%= expression %&gt;</pre>
            </p>
            <p><b>JSP Directive -></b> The JSP directive is used to define global properties for the JSP page.
                <pre>Syntax: &lt;%@ directive %&gt;</pre>
            </p>
        </div>
    <% 
        } 
    %>

    <!-- Form to submit the incremented value of i -->
    <form action="index.jsp" method="get">
        <!-- Hidden field to pass the updated value of i -->
        <input type="hidden" name="no" value="<%= i + 1 %>">
        <input type="submit" value="Show/hide">
    </form>

</body>
</html>
