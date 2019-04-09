<#include "security.ftl">

<#-- вивід повідомлень колонками-->
<div class="card-columns">
    <#list messages as message>
    <#-- відступ зверху і з низу 3 одиниці (my-3)-->
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <#-- відступ зі всіх сторін на 2 одиниці (m-2)-->
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                ${message.authorName}
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>