<%@ page import="reading.server.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="nav navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-inner">
        <ul class="nav">
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li class="active"><g:link class="create" action="create">
                <g:message code="default.new.label" args="[entityName]"/></g:link>
            </li>
        </ul>
    </div>
</div>

<div class="container" style="margin-top: 30px">
    <div class="row">
        <div id="list-book" class="span8" role="main">
            <h3><g:message code="default.list.label" args="[entityName]"/></h3>
            <g:if test="${flash.message}">
                <div class="message alert" role="status">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    ${flash.message}
                </div>
            </g:if>
            <table class="table table-striped table-bordered table-condensed">
                <thead>
                <tr>

                    <th><g:message code="book.bookFile.label" default="Book File"/></th>

                    <g:sortableColumn class="header" property="bookIconUrl"
                                      title="${message(code: 'book.bookIconUrl.label', default: 'Book Icon Url')}"/>

                    <g:sortableColumn class="header" property="bookName"
                                      title="${message(code: 'book.bookName.label', default: 'Book Name')}"/>

                    <g:sortableColumn class="header" property="bookNumber"
                                      title="${message(code: 'book.bookNumber.label', default: 'Book Number')}"/>

                    <g:sortableColumn class="header" property="bookSize"
                                      title="${message(code: 'book.bookSize.label', default: 'Book Size')}"/>

                    <g:sortableColumn class="header" property="dateCreated"
                                      title="${message(code: 'book.dateCreated.label', default: 'Date Created')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${bookInstanceList}" status="i" var="bookInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "bookFile")}</g:link></td>

                        <td>${fieldValue(bean: bookInstance, field: "bookIconUrl")}</td>

                        <td>${fieldValue(bean: bookInstance, field: "bookName")}</td>

                        <td>${fieldValue(bean: bookInstance, field: "bookNumber")}</td>

                        <td>${fieldValue(bean: bookInstance, field: "bookSize")}</td>

                        <td><g:formatDate date="${bookInstance.dateCreated}"/></td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${bookInstanceTotal}"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>
