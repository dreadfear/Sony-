<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="top-banner-center">
			<div class="swiper-container">
				<div class="swiper-wrapper">

					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="container-fluid">
				<div class="wrapper"><a>
						<xsl:if test="FileUrl!=''">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
						</xsl:if>

						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a></div>
				<div class="container">
					<div class="caption"><span class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</span><span class="text">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</span></div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
