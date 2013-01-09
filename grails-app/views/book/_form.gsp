<%@ page import="reading.server.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookIconUrl', 'error')} ">
	<label for="bookIconUrl">
		<g:message code="book.bookIconUrl.label" default="Book Icon Url" />
		
	</label>
	<g:textField name="bookIconUrl" value="${bookInstance?.bookIconUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookName', 'error')} ">
	<label for="bookName">
		<g:message code="book.bookName.label" default="Book Name" />
		
	</label>
	<g:textField name="bookName" value="${bookInstance?.bookName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookNumber', 'error')} ">
	<label for="bookNumber">
		<g:message code="book.bookNumber.label" default="Book Number" />
		
	</label>
	<g:textField name="bookNumber" value="${bookInstance?.bookNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookSize', 'error')} ">
	<label for="bookSize">
		<g:message code="book.bookSize.label" default="Book Size" />
		
	</label>
	<g:textField name="bookSize" value="${bookInstance?.bookSize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'detailText', 'error')} ">
	<label for="detailText">
		<g:message code="book.detailText.label" default="Detail Text" />
		
	</label>
	<g:textField name="detailText" value="${bookInstance?.detailText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fileEntityInstance, field: 'data', 'error')} required">
    <label for="data">
        <g:message code="book.fileEntity.data.label" default="Data" />
        <span class="required-indicator">*</span>
    </label>
    <input type="file" id="data" name="data" />
</div>

