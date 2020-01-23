<#import "parts/common.ftl" as c>

<@c.page>

    ${userChannel.username}

    <#if !isCurrentUser>
        <#if isSubscriber>
            <a class="btn btn-danger" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
        <#else>
            <a class="btn btn-success" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        </#if>

    </#if>

<#--    <div class="container">-->
        <div class="row my-3">
            <div class="col-6">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscribers</div>
                        <h3 class="card-text">
                            <a href="/user/subscribers/${userChannel.id}/list">${subscriptionsCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscriptions</div>
                        <h3 class="card-text">
                            <a href="/user/subscriptions/${userChannel.id}/list">${subscribersCount}</a>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
<#--    </div>-->


    <#if isCurrentUser>
        <#include "parts/messageEdit.ftl" />
    </#if>

    <#include "parts/messageList.ftl" />
</@c.page>