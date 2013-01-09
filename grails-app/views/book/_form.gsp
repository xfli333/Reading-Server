<%@ page import="reading.server.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookFile', 'error')} required">
	<label for="bookFile">
		<g:message code="book.bookFile.label" default="Book File" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="bookFile" name="bookFile.id" from="${reading.server.FileEntity.list()}" optionKey="id" required="" value="${bookInstance?.bookFile?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookSize', 'error')} ">
	<label for="bookSize">
		<g:message code="book.bookSize.label" default="Book Size" />
		
	</label>
	<g:textField name="bookSize" value="${bookInstance?.bookSize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="book.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${bookInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'detailText', 'error')} ">
	<label for="detailText">
		<g:message code="book.detailText.label" default="Detail Text" />
		
	</label>
	<g:textField name="detailText" value="${bookInstance?.detailText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'iconUrl', 'error')} ">
	<label for="iconUrl">
		<g:message code="book.iconUrl.label" default="Icon Url" />
		
	</label>
	<g:textField name="iconUrl" value="${bookInstance?.iconUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="book.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${bookInstance?.name}"/>
</div>



<div class="fieldcontain ${hasErrors(bean: fileEntityInstance, field: 'data', 'error')} required">
    <label for="data">
        <g:message code="book.fileEntity.data.label" default="Data" />
        <span class="required-indicator">*</span>
    </label>
    <input type="file" id="data" name="data" />
</div>

