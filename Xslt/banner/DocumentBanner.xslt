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
		<a>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>

			</img>
		</a>

		<div class="caption">
			<h1>
				<xsl:value-of disable-output-escaping="yes" select="/BannerList/ZoneTitle"></xsl:value-of>
			</h1>
		</div>
	</xsl:template>

</xsl:stylesheet>
