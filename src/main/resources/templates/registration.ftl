<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="mb-4">Зарегистрируйтесь, чтобы пользоваться системой</div>
    ${message?ifExists}
    <@l.login "/registration" true />
</@c.page>