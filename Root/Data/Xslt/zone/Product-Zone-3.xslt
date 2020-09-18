<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="product-specialist-display product-section ">
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone" mode='Title'></xsl:apply-templates>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode='Sub'>
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Sub-2'></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode='Title'>
		<xsl:if test="IsActive='true'">
			<xsl:apply-templates select="Zone" mode='Title-2'></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode='Title-2'>
		<xsl:if test="IsActive='true'">
			<h2 class="head-title text-center">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h2>
			<xsl:if test=" Description !=''">
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
				</div>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode='Sub-2'>
		<div class="col w-full sm:w-1/2 md:w-4/12">
			<div class="col-match-height">
				<div class="figure-product">
					<div class="figure-image">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="aria-hidden">
								<xsl:text disable-output-escaping="yes">true</xsl:text>
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
					<div class="figcaption">
						<div class="title">
							<h2>

								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="tabindex">
										<xsl:text disable-output-escaping="yes">-1</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="aria-hidden">
										<xsl:text disable-output-escaping="yes">true</xsl:text>
									</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</a>
							</h2>
						</div>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
