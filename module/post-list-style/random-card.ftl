<div class="post-container" data-aos="fade-up">
    <div class="content-wrapper articles" id="post-list" <#if posts?? && posts.getTotalElements() lt 3>style="justify-content: space-around; !important;"</#if>>
        <#if posts?? && posts.getTotalElements() gt 0>
            <#list posts.content as post>
                <article
                        class="post-item grid-32 grid-48 mobile-grid-100 post card postItem mrg-bottom-90 card-item-vel">
                    <div class="article-wrapper card-shadow">
                        <header>
                            <div class="post-format-image post-format-wrapper">
                                <div class="featured-image">
                                    <#if post.thumbnail?? && post.thumbnail!=''>
                                        <a data-ajax href="${post.fullPath!}"
                                              class="thumb hover-effect" style="background-color: transparent !important">
                                            <img class="lazyload fullimage cover" role="img" aria-label="" src="${theme_base!}/assets/media/images/loading.svg"  data-src="${post.thumbnail!''}" alt="${post.title}" />
                                        </a>
                                    <#elseif settings.card_random_cover_list ?? && settings.card_random_cover_list != ''>     
                                      <a data-ajax href="${post.fullPath!}"
                                              class="thumb hover-effect" style="background-color: transparent !important">
                                              <img class="fullimage cover img-random" role="img" aria-label="" src="${theme_base!}/assets/media/images/loading.svg" data-src="${post.thumbnail!''}" alt="${post.title}" />
                                        </a>
                                    <#else>
                                        <a data-ajax href="${post.fullPath!}" class="thumb hover-effect">
                                            <span class="fullimage default-cover-bg" role="img" aria-label=""></span>
                                        </a>
                                    </#if>
                                    <#--  <#if post.tags?? && post.tags?size gt 0>
                                        <div class="tags absolute">
                                            <a data-ajax href="${post.tags[0].fullPath!}" class="ctag ctag-6 ctag-gridea">
                                                ${post.tags[0].name!}
                                            </a>
                                        </div>
                                    </#if>  -->
                                </div>
                            </div>
                            <div class="meta">
                                <time datetime="${post.createTime?string("yyyy-MM-dd")}">
                                    <i class="fa fa-pencil"></i>
                                    <span class="lately">${post.createTime?string("yyyy-MM-dd")}</span>
                                </time>
                            </div>

                            <p class="gradient-effect text-clamp-1" title="${post.title!}" style="color: var(--base-color);">
                                <a href="${post.fullPath!}" data-ajax> ${post.title!} </a>
                            </p>
                        </header>
                        <a href="${post.fullPath!}" data-ajax>
                            <div class="post-excerpt text-clamp-3 tracking-wider">
                                ${post.summary!}
                            </div>
                        </a>

                        <footer class="author-meta">
                            <a href="" class="author" title="" data-ajax>
                                    <span class="author-image cover"
                                          style="background-image: url(${user.avatar!});"></span>
                                <span class="author-name">${user.nickname!}</span>
                            </a>
                            <div>
                            <span class="visitors-count">
                                ${post.visits!} <i class="fa fa-fire"></i>
                            </span>
                                <span class="visitors-comment" style="margin-left: 10px;">
                                    ${post.commentCount} <i class="fa fa-comment-o"></i>
                                </span>
                            </div>
                        </footer>
                    </div>
                </article>
            </#list>
        </#if>
    </div>
</div>
