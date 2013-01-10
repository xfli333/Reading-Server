<%@ page import="reading.server.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>

<div class="nav navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-inner">
        <ul class="nav">
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="list" action="list"><g:message code="default.list.label"
                                                              args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>
</div>

<div class="container" style="margin-top: 30px">
    <div class="row">
        <div id="edit-book" class="content scaffold-edit" role="main">
            <h3><g:message code="default.edit.label" args="[entityName]"/></h3>
            <g:if test="${flash.message}">
                <div class="message alert" role="status">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    ${flash.message}
                </div>
            </g:if>
            <g:hasErrors bean="${bookInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${bookInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form method="post" enctype="multipart/form-data" class="form-horizontal">
                <g:hiddenField name="id" value="${bookInstance?.id}"/>
                <g:hiddenField name="version" value="${bookInstance?.version}"/>
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons form-actions">
                    <g:actionSubmit class="save btn btn-primary" action="update"
                                    value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                    <g:actionSubmit class="delete btn btn-danger" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    formnovalidate=""
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
