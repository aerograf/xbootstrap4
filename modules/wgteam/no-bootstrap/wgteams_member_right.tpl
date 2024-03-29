<div class="member">
    <table class="member-table <{$member.rel_tablestyle}>">
        <tr>
            <td class="member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_NAME}></td>
            <td class="member-text member-name"><{$member.member_name}></td>
            <{if $member.member_image}>
            <td class="member-img center" rowspan="<{$member.rel_nb_infos}>"><img class="center <{$member.rel_imagestyle}>" src="<{$member.member_image_url}><{$member.member_image}>" alt="<{$member.member_name}>" title="<{$member.member_name}>"></td>
            <{/if}>
        </tr>
        <{if $member.member_address}>
            <tr>
                <td class="member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_ADDRESS}></td>
                <td class="member-text member-address"><{$member.member_address}></td>
            </tr>
        <{/if}>
        <{if $member.member_phone}>
            <tr>
                <td class="member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_PHONE}></td>
                <td class="member-text member-phone"><{$member.member_phone}></td>
            </tr>
        <{/if}>
        <{if $member.member_email}>
            <tr>
                <td class="member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_EMAIL}></td>
                <td class="member-text member-email"><{$member.member_email}></td>
            </tr>
        <{/if}>
        <{if $member.info_1_name || $member.info_1}>
            <tr>
                <td class="member-label"><{$member.info_1_name}></td>
                <td class="member-text member-info"><{$member.info_1}></td>
            </tr>
        <{/if}>
        <{if $member.info_2_name || $member.info_2}>
            <tr>
                <td class="member-label"><{$member.info_2_name}></td>
                <td class="member-text member-info"><{$member.info_2}></td>
            </tr>
        <{/if}>
        <{if $member.info_3_name || $member.info_3}>
            <tr>
                <td class="member-label"><{$member.info_3_name}></td>
                <td class="member-text member-info"><{$member.info_3}></td>
            </tr>
        <{/if}>
        <{if $member.info_4_name || $member.info_4}>
            <tr>
                <td class="member-label"><{$member.info_4_name}></td>
                <td class="member-text member-info"><{$member.info_4}></td>
            </tr>
        <{/if}>
        <{if $member.info_5_name || $member.info_5}>
            <tr>
                <td class="member-label"><{$member.info_5_name}></td>
                <td class="member-text member-info"><{$member.info_5}></td>
            </tr>
        <{/if}>
    </table>
</div>