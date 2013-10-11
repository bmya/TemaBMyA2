{*
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2011 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/

*}

<div id="moduleList">
 {if $AUTHENTICATED}
<ul>
    <li class="noBorder">&nbsp;</li>
    {foreach from=$moduleTopMenu item=module key=name name=moduleList}
    {if $name == $MODULE_TAB}
      {if $name=='Home'}
	 <li class="noBorder">
        <span class="currentTabLeft"></span><span class="currentTab">{sugar_link id="moduleTab_$name" module=$name}
	<ul class="cssmenu"></ul>
	</span><span class="currentTabRight"></span>
      {else}
    <li class="noBorder">
        <span class="currentTabLeft"></span><span class="currentTab">{sugar_link id="moduleTab_$name" module=$name}
	<ul class="cssmenu">
	{foreach from=$shortcutTopMenu.$name item=shortcut_item}
		<li><a id="{$shortcut_item.LABEL|replace:' ':''}{$tabGroupName}" href="{sugar_ajax_url url=$shortcut_item.URL}">{$shortcut_item.IMAGE}&nbsp;{$shortcut_item.LABEL}</a></li>
	{/foreach}
	</ul>
	</span><span class="currentTabRight"></span>
       {/if}
    {else}
        {if $name=='Home'}
	    <li><span class="notCurrentTabLeft"></span><span class="notCurrentTab">{sugar_link id="moduleTab_$name" module=$name data=$module}
	</span><span class="notCurrentTabRight"></span>
	{else}
    <li >
        <span class="notCurrentTabLeft"></span><span class="notCurrentTab">{sugar_link id="moduleTab_$name" module=$name data=$module}
	<ul class="cssmenu">
	{foreach from=$shortcutTopMenu.$name item=shortcut_item}
		<li><a id="{$shortcut_item.LABEL|replace:' ':''}{$tabGroupName}" href="{sugar_ajax_url url=$shortcut_item.URL}">{$shortcut_item.IMAGE}&nbsp;{$shortcut_item.LABEL}</a></li>
				
		              	 
	{/foreach}
	</ul>
	</span><span class="notCurrentTabRight"></span>
	{/if}
    {/if}
    </li>
    {/foreach}
    {if count($moduleExtraMenu) > 0}
    <li id="moduleTabExtraMenu">
        <a href="#">&gt;&gt;</a><br />
        <ul class="cssmenu">
            {foreach from=$moduleExtraMenu item=module key=name name=moduleList}
            <li>{sugar_link id="moduleTab_$name" module=$name data=$module}<font color="black">&nbsp;&nbsp;&nbsp;&gt;&gt;</font>
	    {if $shortcutExtraMenu.$name}
	    <ul class="cssmenu1">
	    {foreach from=$shortcutExtraMenu.$name item=shortcut_item}
		 <li><a id="{$shortcut_item.LABEL|replace:' ':''}{$tabGroupName}" href="{sugar_ajax_url url=$shortcut_item.URL}">{$shortcut_item.IMAGE}&nbsp;{$shortcut_item.LABEL}</a></li>
	{/foreach}
	</ul>
	{/if}
	    
	    </li>
	    
            {/foreach}
        </ul>        
    </li>
    {/if}
</ul>
{/if}
</div>
{if $AUTHENTICATED}
    {include file="_headerLastViewed.tpl" theme_template=true}
{/if}


