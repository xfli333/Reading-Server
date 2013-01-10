<%@ page import="reading.server.Book" %>



<div class="fieldcontain control-group  ${hasErrors(bean: bookInstance, field: 'bookIconUrl', 'error')} ">
    <label class="control-label" for="bookIconUrl">
        <g:message code="book.bookIconUrl.label" default="Book Icon Url"/>
    </label>

    <div class="controls">
        <g:textField name="bookIconUrl" value="${bookInstance?.bookIconUrl}"/>
    </div>
</div>

<div class="fieldcontain control-group ${hasErrors(bean: bookInstance, field: 'bookName', 'error')} ">
    <label class="control-label" for="bookName">
        <g:message code="book.bookName.label" default="Book Name"/>
    </label>

    <div class="controls">
        <g:textField name="bookName" value="${bookInstance?.bookName}"/>
    </div>
</div>

<div class="fieldcontain control-group ${hasErrors(bean: bookInstance, field: 'bookNumber', 'error')} ">
    <label class="control-label" for="bookNumber">
        <g:message code="book.bookNumber.label" default="Book Number"/>

    </label>

    <div class="controls">
        <g:textField name="bookNumber" value="${bookInstance?.bookNumber}"/>
    </div>
</div>

<div class="fieldcontain control-group ${hasErrors(bean: bookInstance, field: 'bookSize', 'error')} ">
    <label class="control-label" for="bookSize">
        <g:message code="book.bookSize.label" default="Book Size"/>

    </label>

    <div class="controls">
        <g:textField name="bookSize" value="${bookInstance?.bookSize}"/>
    </div>
</div>

<div class="fieldcontain control-group ${hasErrors(bean: bookInstance, field: 'detailText', 'error')} ">
    <label class="control-label" for="detailText">
        <g:message code="book.detailText.label" default="Detail Text"/>

    </label>

    <div class="controls">
        <g:textField name="detailText" value="${bookInstance?.detailText}"/>
    </div>
</div>

<g:if test="${bookInstance?.bookFile}">
    <div class="fieldcontain control-group">
        <label class="control-label" for="data">
            <g:message code="book.fileEntity.name.label" default="Current File"/>
        </label>

        <div class="controls">
            <input type="text" value="${bookInstance?.bookFile?.fileName}" readonly="readonly"/>
        </div>
    </div>
</g:if>

<div class="fieldcontain control-group ${hasErrors(bean: fileEntityInstance, field: 'data', 'error')} required">
    <label class="control-label" for="data">
        <g:message code="book.fileEntity.data.label" default="Data"/>
        <span class="required-indicator">*</span>
    </label>

    <div class="controls">
       <input type="file" id="data" name="data"/>
    </div>
</div>


