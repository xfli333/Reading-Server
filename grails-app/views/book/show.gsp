
<%@ page import="reading.server.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.bookFile}">
				<li class="fieldcontain">
					<span id="bookFile-label" class="property-label"><g:message code="book.bookFile.label" default="Book File" /></span>
					
						<span class="property-value" aria-labelledby="bookFile-label"><g:link controller="fileEntity" action="show" id="${bookInstance?.bookFile?.id}">${bookInstance?.bookFile?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.bookSize}">
				<li class="fieldcontain">
					<span id="bookSize-label" class="property-label"><g:message code="book.bookSize.label" default="Book Size" /></span>
					
						<span class="property-value" aria-labelledby="bookSize-label"><g:fieldValue bean="${bookInstance}" field="bookSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="book.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${bookInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="book.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${bookInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.detailText}">
				<li class="fieldcontain">
					<span id="detailText-label" class="property-label"><g:message code="book.detailText.label" default="Detail Text" /></span>
					
						<span class="property-value" aria-labelledby="detailText-label"><g:fieldValue bean="${bookInstance}" field="detailText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.iconUrl}">
				<li class="fieldcontain">
					<span id="iconUrl-label" class="property-label"><g:message code="book.iconUrl.label" default="Icon Url" /></span>
					
						<span class="property-value" aria-labelledby="iconUrl-label"><g:fieldValue bean="${bookInstance}" field="iconUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="book.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bookInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bookInstance?.id}" />
					<g:link class="edit" action="edit" id="${bookInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
