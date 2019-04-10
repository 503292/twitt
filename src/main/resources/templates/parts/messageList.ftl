<#include "security.ftl">

<#-- вивід повідомлень колонками-->
<div class="card-columns">
    <#list messages as message>
    <#-- відступ зверху і з низу 3 одиниці (my-3)-->
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top" />
            </#if>
            <#-- відступ зі всіх сторін на 2 одиниці (m-2)-->
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}">${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                        Edit
                    </a>
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>
