<#import "parts/common.ftl" as common>

<@common.page>
    <a href="/main">Вернуться на главную</a>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Список пользователей</label></div>

    <table>
        <thead>
        <tr>
            <th>Имя</th>
                <th>Статус</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">Редактировать</a></td>

            </tr>
        </#list>
        </tbody>
    </table>
</@common.page>