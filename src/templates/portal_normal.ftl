<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	${theme.include(top_head_include)}

</head>

<body class="${css_class} bt">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<#if is_signed_in>
	<@liferay.dockbar />
</#if>

<div class="container-fluid" id="wrapper">

	<#if has_navigation>
		<#include "${full_templates_path}/navigation.ftl" />
	</#if>

    <#if selectable>
        ${theme.include(content_include)}
    <#else>
        ${portletDisplay.recycle()}

        ${portletDisplay.setTitle(the_title)}

        ${theme.wrapPortlet("portlet.ftl", content_include)}
    </#if>

    <div class="clear"></div>

	<footer id="footer" role="contentinfo">
        <div class="btn-row social">
            <span class="icon-3x icon-twitter-sign"></span>
            <span class="icon-3x icon-facebook-sign"></span>
            <span class="icon-3x icon-linkedin-sign"></span>
            <span class="icon-3x icon-google-plus-sign"></span>
        </div>

		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
	</footer>

</div>

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}


<script type="text/javascript">


    AUI().ready("node",function(A){
        A.one("#menu-close").on('click', function (e) {
            e.preventDefault();
            A.one("#sidebar-wrapper").toggleClass("active");
        });
        // Opens the sidebar menu
        A.one("#menu-toggle").on('click',function (e) {
            e.preventDefault();
            A.one("#sidebar-wrapper").toggleClass("active");
        });
        // Scrolls to the selected menu item on the page

        A.all('#wrapper  a[href*="#"]:not([href="#"])').on('click',function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                    var target = A.one(this.hash);
                    target = target.length ? target : A.one('[name="' + this.hash.slice(1) + '"]');
                    if (target.length) {
                        A.all('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });

    });
</script>

</body>

</html>