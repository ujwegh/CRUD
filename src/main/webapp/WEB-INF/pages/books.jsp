<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>

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
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>
<div align="center">
    <h1>List of Books</h1>
    <c:if test="${empty listBookByTitle || empty listBookByAuthor || empty listBookByReadAlready}">
        <c:if test="${!empty listBooks}">
            <table class="tg">
                <tr>
                    <th width="80">ID</th>
                    <th width="120">Title</th>
                    <th width="120">Description</th>
                    <th width="120">Author</th>
                    <th width="120">ISBN</th>
                    <th width="120">Print Year</th>
                    <th width="120">Read Already</th>
                    <th width="60">Edit</th>
                    <th width="60">Delete</th>

                </tr>
                <c:forEach items="${listBooks}" var="book">
                    <tr>
                        <td>${book.id}</td>
                        <td><a href="/bookdata/${book.id}">${book.title}</a></td>
                        <td>${book.description}</td>
                        <td>${book.author}</td>
                        <td>${book.isbn}</td>
                        <td>${book.printYear}</td>
                        <td>${book.readAlready}</td>

                        <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
                        <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </c:if>

    <c:if test="${!empty listBookByTitle}">
        <h2>by Title</h2>
        <table class="tg">
            <tr>
                <th width="80">ID</th>
                <th width="120">Title</th>
                <th width="120">Description</th>
                <th width="120">Author</th>
                <th width="120">ISBN</th>
                <th width="120">Print Year</th>
                <th width="120">Read Already</th>
                <th width="60">Edit</th>
                <th width="60">Delete</th>

            </tr>
            <c:forEach items="${listBookByTitle}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td><a href="/bookdata/${book.id}">${book.title}</a></td>
                    <td>${book.description}</td>
                    <td>${book.author}</td>
                    <td>${book.isbn}</td>
                    <td>${book.printYear}</td>
                    <td>${book.readAlready}</td>

                    <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <br/>
        <a href="<c:url value="/books"/>">Back</a>
    </c:if>

    <c:if test="${!empty listBookByAuthor}">
        <h2>by Author</h2>
        <table class="tg">
            <tr>
                <th width="80">ID</th>
                <th width="120">Title</th>
                <th width="120">Description</th>
                <th width="120">Author</th>
                <th width="120">ISBN</th>
                <th width="120">Print Year</th>
                <th width="120">Read Already</th>
                <th width="60">Edit</th>
                <th width="60">Delete</th>

            </tr>
            <c:forEach items="${listBookByAuthor}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td><a href="/bookdata/${book.id}">${book.title}</a></td>
                    <td>${book.description}</td>
                    <td>${book.author}</td>
                    <td>${book.isbn}</td>
                    <td>${book.printYear}</td>
                    <td>${book.readAlready}</td>

                    <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <br/>
        <a href="<c:url value="/books"/>">Back</a>
    </c:if>

    <c:if test="${!empty listBookByReadAlready}">
        <h2>by Read Already</h2>
        <table class="tg">
            <tr>
                <th width="80">ID</th>
                <th width="120">Title</th>
                <th width="120">Description</th>
                <th width="120">Author</th>
                <th width="120">ISBN</th>
                <th width="120">Print Year</th>
                <th width="120">Read Already</th>
                <th width="60">Edit</th>
                <th width="60">Delete</th>

            </tr>
            <c:forEach items="${listBookByReadAlready}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td><a href="/bookdata/${book.id}">${book.title}</a></td>
                    <td>${book.description}</td>
                    <td>${book.author}</td>
                    <td>${book.isbn}</td>
                    <td>${book.printYear}</td>
                    <td>${book.readAlready}</td>

                    <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <br/>
        <a href="<c:url value="/books"/>">Back</a>
    </c:if>

    <div align="center">
        <ul class="paging">
            <table>
                <tr>
                    <td>
                        <c:if test="${page > 1}">
                            <a href="<c:url value="/books"/>">Back</a>
                        </c:if>
                    </td>
                    <td>
                        <c:if test="${page > 1}">
                            <a href="<c:url value="/books"><c:param name="page" value="${page - 1}"/>${page - 1}</c:url>">Previous</a>
                        </c:if>
                    </td>
                    <td></td>
                    <td>
                        <spring:message text="${page}"/>
                    </td>
                    <td></td>
                    <td>
                        <c:if test="${!empty listBooks}">
                            <a href="<c:url value="/books"><c:param name="page" value="${page+1}"/>${page+1}</c:url>">Next</a>
                        </c:if>
                    </td>
                </tr>
            </table>
        </ul>
    </div>


    <h1>Add/Edit a Book</h1>

    <c:url var="addAction" value="/books/add"/>

    <form:form action="${addAction}" commandName="book">
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
                    <form:label path="title">
                        <spring:message text="Title"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="title"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="description">
                        <spring:message text="Description"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="description"/>
                </td>
            </tr>

            <c:if test="${!empty book.title}">
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
            </c:if>
            <c:if test="${empty book.title}">
                <tr>
                    <td>
                        <form:label path="author">
                            <spring:message text="Author"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="author"/>
                    </td>
                </tr>
            </c:if>

            <tr>
                <td>
                    <form:label path="isbn">
                        <spring:message text="ISBN"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="isbn"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="printYear">
                        <spring:message text="Print Year"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="printYear"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="readAlready">
                        <spring:message text="Read Already"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="readAlready" value="false" readonly="true"/>
                </td>
            </tr>

            <tr>
                <td></td>
                <td colspan="2">
                    <c:if test="${!empty book.title}">
                        <input type="submit"
                               value="<spring:message text="Edit Book"/>"/>
                    </c:if>
                    <c:if test="${empty book.title}">
                        <input type="submit"
                               value="<spring:message text="Add Book"/>"/>
                    </c:if>
                </td>
            </tr>
        </table>
    </form:form>
</div>

<br/>

<div align="center">
    <h1>Search a Book</h1>
    <c:url var="searchAction" value="/searchbooks"/>
    <form:form action="${searchAction}" commandName="book">
        <table>
            <tr>
                <td>
                    <form:label path="title">
                        <spring:message text="Title"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="title"/>
                </td>
                <td colspan="2">
                    <input type="submit"
                           value="<spring:message text="Search Book"/>"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>

<div align="center">
    <c:url var="searchAction" value="/searchbooksbyAuthor"/>
    <form:form action="${searchAction}" commandName="book">
        <table>
            <tr>
                <td>
                    <form:label path="author">
                        <spring:message text="Author"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="author"/>
                </td>
                <td colspan="2">
                    <input type="submit"
                           value="<spring:message text="Search Book"/>"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>

<div align="center">
    <c:url var="searchAction" value="/searchbooksbyReadAlready"/>
    <form:form action="${searchAction}" commandName="book">
        <table>
            <tr>
                <td>
                    <form:label path="readAlready">
                        <spring:message text="Read Already"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="readAlready"/>
                </td>
                <td colspan="2">
                    <input type="submit"
                           value="<spring:message text="Search Book"/>"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>