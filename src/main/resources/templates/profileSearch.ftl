<#import "parts/common.ftl" as common>

<@common.page>
    <div class="form-group col-xs-3" style="margin: 10px 0 0 15px;">
        <form method="get" action="/profile/search">
            <input class="form-control" type="text" placeholder="Введите имя пользователя" name="username" value="${username?ifExists}">
            <button type="submit" class="btn btn-default">Найти</button>
        </form>

        <#list users as user>
            <div style="border-bottom: 1px solid lightgray; margin-top: 10px;">
                <td>ID: ${user.id}</td>
                <br>
                <td>Имя пользователя: <a href="/profile/${user.id}">${user.username}</a></td>
            </div>
        </#list>

        <br>

        <a href="/main">Вернуться на главную</a>

    </div>
</@common.page>