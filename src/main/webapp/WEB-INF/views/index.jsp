<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: SergejK
  Date: 4/15/2020
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>





.one {
    position: absolute;
}
</style>

<title>Hello</title>

<body>

    <div class="one">
        <a href="${pageContext.request.contextPath}addNewBook">Add new</a>

        <%--<table style="word-wrap: break-word" border="7">--%>
            <%--<tr>--%>
                <%--<th>Author</th>--%>
                <%--<th>Book Name</th>--%>
                <%--<th>Book Genre</th>--%>
                <%--<th>Book Title</th>--%>
                <%--<th>Book Pages</th>--%>
                <%--<th>Book Price</th>--%>
                <%--<th>Action</th>--%>
            <%--</tr>--%>

            <%--<c:forEach var="bookForm" items="${optionsList}">--%>

                <%--<tr>--%>
                    <%--<td width="75">${bookForm.bookauthor}</td>--%>

                    <%--<td width="50">${bookForm.bookname}</td>--%>
                    <%--<td width="50">${bookForm.bookgenre}</td>--%>
                    <%--<td width="50">${bookForm.booktitle}</td>--%>
                    <%--<td width="50">${bookForm.bookpages}</td>--%>
                    <%--<td width="50">${bookForm.bookprice}</td>--%>
                    <%--<td width="50"><a href="/options/delete${bookForm.id}">Delete</a></td>--%>

                <%--</tr>--%>
            <%--</c:forEach>--%>
        <%--</table>--%>

    </div>
</ul>

</body>
</html>
