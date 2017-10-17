<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
    <title>BookData</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>
<div align="center">
    <h1>Book Details</h1>

    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Description</th>
            <th width="120">Author</th>
            <th width="120">ISBN</th>
            <th width="120">Print Year</th>
            <th width="120">Read Already</th>
        </tr>
        <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.description}</td>
            <td>${book.author}</td>
            <td>${book.isbn}</td>
            <td>${book.printYear}</td>
            <td>${book.readAlready}</td>
        </tr>
    </table>

    <br/>
    <br/>

    <c:url var="addActionz" value="/books/add"/>
    <form:form action="${addActionz}" commandName="book">

        <table>
            <c:if test="${!empty book.title}">
                <tr>
                    <td>
                        <form:label path="id">
                            <spring:message text="ID"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="id" readonly="true" size="8" disabled="true"/>
                        <form:hidden path="id"/>
                    </td>
                </tr>
            </c:if>
            <tr>
                <td>
                    <form:label path="title" >
                        <spring:message text="Title"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="title" readonly="true"/>

                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="description">
                        <spring:message text="Description"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="description" readonly="true"/>

                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="author">
                        <spring:message text="Author"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="author" readonly="true"/>

                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="isbn">
                        <spring:message text="ISBN"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="isbn" readonly="true"/>

                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="printYear">
                        <spring:message text="Print Year"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="printYear" readonly="true"/>

                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="readAlready">
                        <spring:message text="Read Already"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="readAlready" value = "true" readonly = "true"/>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <c:if test="${!empty book.title}">
                        <input type="submit"
                               value="<spring:message text="Read this book and return"/>"/>
                    </c:if>
                </td>
            </tr>
        </table>
    </form:form>
</div>


</body>
</html>
