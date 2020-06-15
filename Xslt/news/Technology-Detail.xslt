<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<xsl:if test="Url !='#'">
				<section class="technology-detail-1">
					<div class="container">
						<xsl:apply-templates select="News" mode='News-1'></xsl:apply-templates>
					</div>
				</section>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="head-title text-center">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="zone-description">

		</div>
		<div class="image-wrapper"></div>
	</xsl:template>

</xsl:stylesheet>
