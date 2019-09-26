<#import "parts/common.ftl" as c>

<@c.page>
    <h5>${username}</h5>
    ${message?ifExists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Изменить пароль:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Новый пароль" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Изменить почту:</label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="cablewalker@best.com" value="${email!''}" />
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Сохранить изменения</button>
    </form>
</@c.page>