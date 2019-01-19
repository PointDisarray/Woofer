<#import "parts/common.ftl"as c>
<#import "parts/login.ftl"as l>

<@c.page>
<div>
<@l.logout />
<span><a href="/user">User List</a></span>
</div>
<div>
    <form method ="post">
        <input type="text" name = "text" placeholder="messag">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="text" name = "tag" placeholder="tag">
        <button type="submit">Dobavutu</button>
    </form>
</div>
<!--<div>Spusok povidomlen</div>-->
<form method="get" action="/main">
    <input type="text" name="filter" value=${filter}>
    <button type="submit">Znajtu</button>
</form>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
<#else>
No message
</#list>
</@c.page>