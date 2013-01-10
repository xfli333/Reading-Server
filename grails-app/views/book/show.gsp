<%@ page import="reading.server.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
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
        <div id="show-book" class="content scaffold-show form-horizontal" role="main">
            <h3><g:message code="default.show.label" args="[entityName]"/></h3>
            <g:if test="${flash.message}">
                <div class="message alert" role="status">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    ${flash.message}
                </div>
            </g:if>



            <g:if test="${bookInstance?.bookIconUrl}">
                <div class="fieldcontain control-group">
                    <label class="control-label" for="bookIconUrl">
                        <g:message code="book.bookIconUrl.label" default="Book Icon Url"/>
                    </label>

                    <div class="controls">
                        <g:textField name="bookIconUrl" value="${bookInstance?.bookIconUrl}" readonly="true"/>
                        %{--<g:fieldValue id="bookIconUrl" class="text"--}%
                        %{--bean="${bookInstance}"--}%
                        %{--field="bookIconUrl"/></div>--}%
                    </div>
                </div>
            </g:if>

            <g:if test="${bookInstance?.bookName}">
                <div class="fieldcontain control-group">
                    <label class="control-label" for="bookName">
                        <g:message code="book.bookName.label" default="Book Name"/>
                    </label>

                    <div class="controls">
                        <g:textField name="bookName" value="${bookInstance?.bookName}" readonly="true"/>
                    </div>

                </div>
            </g:if>

            <g:if test="${bookInstance?.bookNumber}">
                <div class="fieldcontain control-group">
                    <label class="control-label" for="bookNumber">
                        <g:message code="book.bookNumber.label" default="Book Number"/>
                    </label>

                    <div class="controls">
                        <g:textField name="bookNumber" value="${bookInstance?.bookNumber}" readonly="true"/>
                    </div>

                </div>
            </g:if>

            <g:if test="${bookInstance?.bookSize}">
                <div class="fieldcontain control-group">
                    <label class="control-label" for="bookNumber">
                        <g:message code="book.bookSize.label" default="Book Size"/>
                    </label>

                    <div class="controls">
                        <g:textField name="bookSize" value="${bookInstance?.bookSize}" readonly="true"/>
                    </div>

                </div>
            </g:if>

            <g:if test="${bookInstance?.detailText}">
                <div class="fieldcontain control-group">
                    <label class="control-label" for="detailText">
                        <g:message code="book.detailText.label" default="Detail Text"/></label>

                    <div class="controls">
                        <g:textField name="detailText" value="${bookInstance?.detailText}" readonly="true"/>
                    </div>

                </div>
            </g:if>

            <g:if test="${bookInstance?.dateCreated}">
                <div class="fieldcontain control-group">
                    <label class="control-label" for="dateCreated">
                        <g:message code="book.dateCreated.label" default="Date Created"/>
                    </label>

                    <div class="controls">
                        %{--<g:formatDate  date="${bookInstance?.dateCreated}"/>--}%
                        <g:textField name="dateCreated" value="${bookInstance?.dateCreated}" readonly="true"/>
                    </div>

                </div>
            </g:if>



            <g:if test="${bookInstance?.bookFile}">

                <div class="fieldcontain control-group">
                    <label class="control-label" for="bookFile">
                        <g:message code="book.bookFile.label" default="Book File"/></label>

                    <div class="property-value controls" aria-labelledby="bookFile-label">
                        <g:link controller="fileEntity" name="bookFile" action="show"
                                id="${bookInstance?.bookFile?.id}">${bookInstance?.bookFile?.fileName}</g:link>
                    </div>
                </div>

            </g:if>

            <g:form>
                <fieldset class="buttons form-actions">
                    <g:hiddenField name="id" value="${bookInstance?.id}"/>
                    <g:link class="edit btn  btn-primary" action="edit" id="${bookInstance?.id}">
                        <g:message code="default.button.edit.label" default="Edit"/>
                    </g:link>
                    <g:actionSubmit class="delete btn  btn-danger" action="delete"
                                    value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                    onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                </fieldset>
            </g:form>
        </div>
    </div></div>
</body>
</html>
