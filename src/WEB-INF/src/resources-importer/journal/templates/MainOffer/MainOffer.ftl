<style type="text/css">
    .services-wrapper {
        padding-bottom: 15px;
    }
    .services-wrapper a {
        color: inherit;
        text-decoration: none;
        padding-bottom: 15px;
    }
</style>


<div class="services-wrapper bg-primary">
    <div class="row">
        <div class="text-center">
        <#if items.getSiblings()?has_content>
            <div class="row-fluid">
                <#list items.getSiblings() as item>
                    <div class="span3">
                        <div class="service-item">
                            <a href="${item.Link.getData()}">
                                <span class="icon-stack icon-4x">
                                    <i class="icon-circle icon-2x text-primary-background"></i>
                                    <i class="${item.Icon.getData()} text-primary"></i>
                                </span>
                                <div class="text-primary">
                                    <h4>
                                        <strong>${item.Title.getData()}</strong>
                                    </h4>
                                    <p>${item.Description.getData()}</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </#list>
            </div>
        </#if>
        </div>
    </div>
</div>