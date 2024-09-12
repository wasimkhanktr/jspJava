<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP</h1>
	<p><b>JSP</b> technology is used to create web application just like Servlet technology. It can be thought of as an extension to Servlet because it provides more functionality than servlet such as expression language, JSTL, etc.</p>
	<p>A JSP page consists of HTML tags and JSP tags. The JSP pages are easier to maintain than Servlet because we can separate designing and development. It provides some additional features such as Expression Language, Custom Tags, etc.</p>
	<h1>jsp tags</h1>
	<ul>
		<li>declaration tag</li>
		<li>expression tag</li>
		<li>scriptlet tag</li>
		<li>directive tag</li>
	</ul>
	<p><b>scriptlet tag -> </b>The code placed within JSP expression tag is written to the output stream of the response. So you need not write out.print() to write data. It is mainly used to print the values of variable or method.
		<pre>Syntax : < %=  statement %></pre>
	</p>
	<p>
		<b>JSP declaration tag - </b><p>
			The code written inside the jsp declaration tag is placed outside the service() method of auto generated servlet.
		<pre>Syntax : < %!  field or method declaration %></pre>
		</p>
	</p>
	<p>
		<b>declaration tag - </b>
		<p>In this example of JSP declaration tag, we are defining the method which returns the cube of given number and calling this method from the jsp expression tag. But we can also use jsp scriptlet tag to call the declared method.</p>
		<pre>Syntax : < %= Enter a number :  %>  </pre>
	</p>

	<p>
		<b>JSP directive : </b>
		<p>Unlike the JSP directive, the jsp:include Action tag is different. Include directives contain resources at the time of translation, whereas include actions control resources at the request.</p>
		<pre>< jsp:include><pre>
	</p>
	
	<%! String name="Md Wasim Akram"; %>

	<% int lenght=name.length(); %>
	
	<%=  lenght %>
	

</body>
</html>