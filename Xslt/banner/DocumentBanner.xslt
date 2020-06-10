<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="document-banner">
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<img src="/Data/Sites/1/skins/default/img/document/bg.jpg" />
		<div class="caption">
			<h1>
				<xsl:value-of disable-output-escaping="yes" select="/BannerList/ZoneTitle"></xsl:value-of>
			</h1>
		</div>
	</xsl:template>

</xsl:stylesheet>