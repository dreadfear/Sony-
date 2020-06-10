<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="navbar-primary-menu">
			<ul class="nav-primary">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</ul>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="count(Zone) > 0">
				<li class="has-mega">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>has-mega active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
					<div class="mega-menu">
						<div class="container">
							<div class="row">
								<xsl:apply-templates select="Zone" mode="Mega"></xsl:apply-templates>
							</div>
						</div>
					</div>
					
				</li>
			</xsl:when>

			<xsl:otherwise>
				<li>
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
				</li>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="Zone" mode="Mega">
		<div class="mega-item col md:w-1/2 lg:w-3/12">
			<a class="mega-link" href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
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
				<span>
					<xsl:value-of select="Title"></xsl:value-of>
				</span>
			</a>
		</div>
	</xsl:template>

</xsl:stylesheet>