<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/NewsList/News)> 0">
			<div class="product-news-section-wrapper">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</xsl:if>

	</xsl:template>

	<xsl:template match="News">

		<section class="product-section-zone ">
			<xsl:attribute name="setBackground">
				<xsl:value-of disable-output-escaping="yes" select="ThumbnailUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col w-full md:w-1/2">
						<div class="figure-caption">
							<div class="head-title">
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
							<a class="btn btn-view-more">

								<xsl:attribute name="href">
									<xsl:value-of select="BriefContent"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>

								<span>
									<xsl:value-of disable-output-escaping="yes" select="/NewsList/VMAText">
									</xsl:value-of>
								</span>
							</a>
						</div>
					</div>
					<div class="col w-full md:w-1/2">
						<div class="image-wrapper">

							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<img class='lazyload'>
								<xsl:attribute name="data-src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</a>

						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>