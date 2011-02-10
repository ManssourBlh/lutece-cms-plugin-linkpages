<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="site-path" select="site-path" />

	<xsl:template match="portlet">
		<div class="portlet -lutece-border-radius append-bottom">
			<xsl:if test="not(string(display-portlet-title)='1')">
				<h3 class="portlet-header">
					<xsl:value-of disable-output-escaping="yes" select="portlet-name" />
				</h3>
				<br />
			</xsl:if>			
				<xsl:apply-templates select="link-pages-portlet" />			
		</div>
	</xsl:template>

	<xsl:template match="link-pages-portlet">
		<div class="portlet-content">
			<ul>
				<xsl:apply-templates select="link-page" />
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="link-page">
		<li>
			<a href="{$site-path}?page_id={link-page-id}" target="_top">
				<b>
					<xsl:value-of select="link-page-name" />
				</b>
			</a>
			<br />
			<xsl:value-of select="link-page-description" />
			<br />
		</li>
	</xsl:template>

</xsl:stylesheet>