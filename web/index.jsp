<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <title>lab 2</title>
  </head>
  <body>
    <div>
        <h1>Choose the computer and additional information</h1>
<!-- Форма для установки информации по компухтеру с отправкой на end_info.jsp -->
        <form action="end_info.jsp" method="post">

<!-- Вставка элементов выборки для формы -->
          <jsp:include page="form/computer.jsp"/>
          <jsp:include page="form/type.jsp"/>
          <jsp:include page="form/memory.jsp"/>
          <jsp:include page="form/video.jsp"/>
          <jsp:include page="form/add_info.jsp"/>

          <input type="submit" value="selected">
        </form>
    </div>
  </body>
</html>
