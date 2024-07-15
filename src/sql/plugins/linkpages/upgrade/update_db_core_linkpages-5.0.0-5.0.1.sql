UPDATE core_portlet_type
SET
    create_specific_form = '/admin/plugins/linkpages/create_portlet_linkpages_list.html',
    modify_specific_form = '/admin/plugins/linkpages/modify_portlet_linkpages_list.html'
WHERE
    id_portlet_type = 'LINK_PAGES_PORTLET';