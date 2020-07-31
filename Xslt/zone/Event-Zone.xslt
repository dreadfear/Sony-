<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="solution-display-section">
			<div class="container">
				<div class="head-title text-center">
					<xsl:apply-templates select="/ZoneList/Zone" mode='Title'></xsl:apply-templates>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="Zone" mode='Child'></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode='Child'>
		<div class="col w-full sm:w-1/2 lg:w-4/12">
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
							<img class='lazyload'>
							<xsl:attribute name="data-src">
								<xsl:value-of select="SecondImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a></div>
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
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								</a></h2>
						</div>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="Zone" mode='Title'>
		<xsl:if test="IsActive='true'">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
