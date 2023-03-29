<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="order.order"%>
<%
    order order_obj = new order();
    order_obj.name = request.getParameter("computer");
    order_obj.type = request.getParameter("type");
%>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Info</title>
    </head>
    <body>
    <%-- Get path to picture --%>
    <img src=<%= order_obj.getPicturePath() %> >
        <div class="info">
            <h1>Computer info</h1>
            <ul>
                <h3>Brand:</h3>
                <li>
                    <%=
                        order_obj.name
                    %>
                </li>

                <h3>Type:</h3>
                <li>
                    <%=
                        order_obj.type
                    %>
                </li>

                <h3>Memory:</h3>
                <%-- Memory check box validation --%>
                <%
                    String[] mem = request.getParameterValues("memory");
                    if (mem == null) {
                        response.sendRedirect(request.getContextPath() + "/index.jsp");
                    }
                    else {
                        for(String memory: mem){
                            out.println("<li>" + memory + "</li>");
                        }
                    }
                %>

                <h3>Video:</h3>
                <%-- Video check box validation --%>
                <%
                    String[] vid = request.getParameterValues("video");
                    if (vid == null && mem!= null) {
                        response.sendRedirect(request.getContextPath() + "/index.jsp");
                    }
                    else if (vid != null){
                        for(String video: vid){
                            out.println("<li>" + video + "</li>");
                        }
                    }
                %>

                <h3>Additional information:</h3>
                <%
                    String inf = request.getParameter("info");
                    if (inf != null) {
                        out.println("<li>" + inf + "</li>");
                    }
                %>
                <br>
            </ul>
        </div>
    </body>
</html>
