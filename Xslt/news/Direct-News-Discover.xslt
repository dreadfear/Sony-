<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<xsl:if test="count(/NewsDetail/NewsRelated)>0">
			<section class="solution-section home-solution">
				<div class="container">
					<h2 class="head-title">
						<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
					</h2>
					<div class="row">
						<xsl:apply-templates select="/NewsDetail/NewsRelated"></xsl:apply-templates>
					</div>

				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsRelated">
		<xsl:if test="position()>0 and position() &lt; 3">
			<div class="col w-full sm:w-1/2">
				<div class="solution-figure">
					<div class="figure-image opacity">
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
							<img class="lazyload">
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
						<h2 class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()>2 and position() &lt;6">
			<div class="col w-full sm:w-4/12">
				<div class="solution-figure">
					<div class="figure-image opacity">
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
							<img class="lazyload">
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
						<h2 class="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>
