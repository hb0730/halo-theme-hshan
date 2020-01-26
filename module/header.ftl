<aside class="sidebar" id="sidebar">
<#--    <div class="sidebar-scrollable">-->
<#--        -->
<#--    </div>-->

    <div class="inner">
        <div class="widget-area">
            <!-- 菜单 -->
            <nav class="site-navigation">
                <h2>${options.blog_title!}</h2>
                <ul class="menu">
                    <@menuTag method="tree">
                        <#list menus?sort_by('priority') as menu>
                            <li class="menu-item home current-menu-item">
                                <a href="${menu.url!}" target="${menu.target!}">${menu.name}</a>
                            </li>
                        </#list>
                    </@menuTag>
                </ul>
            </nav>
        </div>
    </div>
</aside>

<header class="site-header" id="siteHeader">
    <div id="scrollMenu" style="display: none;" class="scroll-menu">
        <@menuTag method="tree">
            <#list menus?sort_by('priority') as menu>
                <a href="${menu.url!}" target="${menu.target!}">${menu.name}</a>
            </#list>
        </@menuTag>
    </div>
    <a class="sidebar-toggle" id="sidebarToggle">
        <span class='icon-menu cross'>
            <span class='middle' aria-hidden="true"> </span>
         </span>

    </a>
</header>
