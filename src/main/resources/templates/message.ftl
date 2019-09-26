<#import "parts/common.ftl" as c>

<@c.page>

    <form action="/user" method="post">
        <div class="form-group row">
            <td>Имя пользователя:<a href="/profile/${user.id}">${user.username}</a></td>


            <div class="card-columns">
                    <div class="card my-3">
                        <#if message.filename??>
                            <img src="/img/${message.filename}" class="card-img-top">
                            <button type="submit" class="btn btn-primary">Скачать файл</button>
                        </#if>
                        <div class="m-2">
                            <span>${message.text}</span>
                            <i>${message.tag}</i>
                        </div>
                        <div class="card-footer text-muted">
                            ${message.authorName}
                        </div>
                    </div>

    </form>
</@c.page>