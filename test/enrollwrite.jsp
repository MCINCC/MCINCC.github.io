<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@page import="java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> <html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>写⼊⽂件</title>

</head>

<body>

<%

String email = new String(request.getParameter("email").getBytes("ISO-8859-1"), "UTF-8");

String password = new String(request.getParameter("password").getBytes("ISO-8859-1"), "UTF-8");

String repassword = new String(request.getParameter("repassword").getBytes("ISO-8859-1"), "UTF-8");

try {

BufferedWriter bw = new BufferedWriter(new FileWriter("save.txt",true));

//FileWriter(File file, boolean append) ，append为true是接⼊⽂件尾，append为false时则会覆盖

StringBuilder sb = new StringBuilder();

sb.append(email + "\t");

sb.append(password + "\t");

sb.append(repassword + "\t\n");

String a = sb.toString();

byte[] b = (a).getBytes();

bw.write(a, 0, b.length);

bw.close();

response.sendRedirect("enrollSuc.html");

} catch (Exception e) {

e.printStackTrace();

}

%>

</body>

</html>
