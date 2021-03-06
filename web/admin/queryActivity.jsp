<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@page import="com.java.bean.*,com.java.dao.*,java.util.List " %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=0.6">
    <title>活动部人员信息----Java兴趣社团～</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo-style.css">
    <link rel="stylesheet"
          href="font-awesome-4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/csc.css">

</head>
<body>
<%
    IDao dao = new DaoImpl<Member>();
    List<Member> activity = dao.queryDepartment("3");
%>
<br/>
<h2 class="tm-section-title">活动部:<%=activity.size()%>
</h2>


<div class="table-responsive">
    <table class="table table-striped " width="100%">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Grade</th>
            <th>College</th>
            <th>Class</th>
            <th>Phone</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (int i = 0; i < activity.size(); i++) {
                out.print("<tr>");
                out.print("<td width=10% />" + activity.get(i).getId() + "</td>");
                out.print("<td width=20% />" + activity.get(i).getName() + "</td>");
                out.print("<td width=10% />" + activity.get(i).getGrade() + "</td>");
                out.print("<td width=20% />" + activity.get(i).getCollege() + "</td>");
                out.print("<td width=15% />" + activity.get(i).getMajor() + "</td>");
                out.print("<td width=10% />" + activity.get(i).getPhone() + "</td>");
                out.print("</tr>");
            }
        %>
        </tbody>
    </table>
</div>

<div class="tm-wrapper-center">
    <a href="/admin/DepartmentInfo.jsp"
       class="btn btn-success  btn-lg col-xs-10 col-sm-10 col-md-10 col-lg-10 col-xl-10"><i class="fa fa-reply"></i> 返回</a>
    <br/>
</div>

<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/tether.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.touchSwipe.min.js"></script>

</body>
</html>