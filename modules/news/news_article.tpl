<{include file="db:news_item.tpl" story=$story}>

<{if $attached_files_count>0}>
    <{$lang_attached_files}>
    <{foreach item=onefile from=$attached_files}>
        <a href="<{$onefile.visitlink}>" target="_blank"><{$onefile.file_realname}></a>
    <{/foreach}>
<{/if}>

<div class="row xoops-news-navigation">
    <{if $pagenav|default:false}><{$smarty.const._NW_PAGE}><{$pagenav}><{/if}>
    <{if $nav_links}>
        <div class="col-md-6 alignleft">
            <{if $previous_story_id != -1}>
                <a href="<{$xoops_url}>/modules/news/article.php?storyid=<{$previous_story_id}>" title="<{$previous_story_title}>">
                    <span class="fa fa-circle-arrow-left"></span> <{$lang_previous_story}>
                </a>
            <{/if}>
        </div>
        <div class="col-md-6 alignright">
            <{if $next_story_id!= -1}>
                <a href="<{$xoops_url}>/modules/news/article.php?storyid=<{$next_story_id}>" title="<{$next_story_title}>">
                    <{$lang_next_story}> <span class="fa fa-circle-arrow-right"></span>
                </a>
            <{/if}>
        </div>
    <{/if}>
</div><!-- .row -->

<div class="xoops-news-icons aligncenter">
    <{if $showicons == true}>
        <a href="<{$xoops_url}>/modules/news/print.php?storyid=<{$story.id}>" title="<{$lang_printerpage}>">
            <span class="fa fa-print"></span>
        </a>
        <a target="_top" href="<{$mail_link}>" title="<{$lang_sendstory}>">
            <span class="fa fa-envelope"></span>
        </a>
        <a target="_blank" href="<{$xoops_url}>/modules/news/makepdf.php?storyid=<{$story.id}>" title="<{$lang_pdfstory}>">
            <span class="fa fa-file"></span>
        </a>
    <{/if}>

    <{if $xoops_isadmin}>
        <a href="<{$xoops_url}>/modules/news/submit.php?op=edit&storyid=<{$story.id}>" title="Edit">
            <span class="fa fa-pencil-square-o"></span>
        </a>
        <a href="<{$xoops_url}>/modules/news/admin/index.php?op=delete&storyid=<{$story.id}>" title="Delete">
            <span class="fa fa-trash"></span>
        </a>
    <{/if}>
</div>

<{if $tags}>
    <{include file="db:tag_bar.tpl"}>
<{/if}>

<{if $showsummary == true && $summary_count>0}>
    <{$lang_other_story}>
    <{foreach item=onesummary from=$summary}>
        <{$onesummary.story_published}>
        <a href="<{$xoops_url}>/modules/news/article.php?storyid=<{$onesummary.story_id}>" title="<{$onesummary.tpltitle}>">
            <{$onesummary.story_title}>
        </a>
    <{/foreach}>
<{/if}>

<{if $share == true}>
    <div class='shareaholic-canvas' data-app='share_buttons' data-app-id=''></div>
<{/if}>

<div class="comments-nav">
    <{$commentsnav}>
</div>

<{$lang_notice}>

    <{if $comment_mode|default:'' == "flat"}>
        <{include file="db:system_comments_flat.tpl"}>
    <{elseif $comment_mode|default:'' == "thread"}>
        <{include file="db:system_comments_thread.tpl"}>
    <{elseif $comment_mode|default:'' == "nest"}>
    <{include file="db:system_comments_nest.tpl"}>
<{/if}>

<{include file='db:system_notification_select.tpl'}>
