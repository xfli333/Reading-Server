
<%@ page import="reading.server.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="book.bookFile.label" default="Book File" /></th>
					
						<g:sortableColumn property="bookIconUrl" title="${message(code: 'book.bookIconUrl.label', default: 'Book Icon Url')}" />
					
						<g:sortableColumn property="bookName" title="${message(code: 'book.bookName.label', default: 'Book Name')}" />
					
						<g:sortableColumn property="bookNumber" title="${message(code: 'book.bookNumber.label', default: 'Book Number')}" />
					
						<g:sortableColumn property="bookSize" title="${message(code: 'book.bookSize.label', default: 'Book Size')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'book.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "bookFile")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "bookIconUrl")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "bookName")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "bookNumber")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "bookSize")}</td>
					
						<td><g:formatDate date="${bookInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
