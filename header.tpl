{* Canonical URLs *}
{if $page_name == 'index'
or $page_name == 'search'
or $page_name == 'category'
or $page_name == 'product'
or $page_name == 'cms'
or $page_name == 'manufacturer'}
<link
	rel="canonical"
	href="
	{if $page_name == 'index' or $page_name == 'search'}{$base_uri}{$lang_iso}/
	{else if $page_name == 'category'}{$link->getCategoryLink($smarty.get.id_category, null, $id_lang,null,null )}
	{else if $page_name == 'product'}{$link->getProductLink($smarty.get.id_product, null, null, null, $id_lang, null, 0, false)}
	{else if $page_name == 'cms'}{$link->getCMSLink($smarty.get.id_cms, null, false, $id_lang)}
	{else if $page_name == 'manufacturer'}{$link->getManufacturerLink($smarty.get.id_manufacturer, null, null, null, $id_lang, null, 0, false)}{/if}"
	/>
{/if}
{* HREFLANG *}
{if $page_name == 'index'
or $page_name == 'search'
or $page_name == 'category'
or $page_name == 'product'
or $page_name == 'cms'
or $page_name == 'manufacturer'}
{foreach $languages as $lang}
	<link
	rel="alternate"
	hreflang="{if $lang.iso_code == $lang_iso}x{else}{$lang.iso_code}{/if}"
	href="
	{if $page_name == 'index' or $page_name == 'search'}{$base_uri}{$lang.iso_code}/
	{else if $page_name == 'category'}{$link->getCategoryLink($smarty.get.id_category, null, $lang.id_lang,null,null )}
	{else if $page_name == 'product'}{$link->getProductLink($smarty.get.id_product, null, null, null, $lang.id_lang, null, 0, false)}
	{else if $page_name == 'cms'}{$link->getCMSLink($smarty.get.id_cms, null, false, $lang.id_lang)}
	{else if $page_name == 'manufacturer'}{$link->getManufacturerLink($smarty.get.id_manufacturer, null, null, null, $lang.id_lang, null, 0, false)}{/if}"
	/>
{/foreach}
{/if}
{* Open Graph *}
{if $page_name == 'product'}
	<meta property="og:title" content="{$meta_title}" />
	<meta property="og:description" content="{$meta_description}" />
	{if $have_image}<meta property="og:image" content="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large_default')}" />{/if}
{/if}
