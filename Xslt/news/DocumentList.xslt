<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="category">
			<h2 class="head-title">
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</h2>
			<table>
				<thead>
					<tr>
						<th></th>
						<th class="text-center">Kích thước file</th>
						<th class="text-center">Ngày cập nhật</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<xsl:apply-templates select="News"></xsl:apply-templates>
				</tbody>
			</table>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<tr>
			<td>
				<p>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</p>
				<p>
					<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
				</p>
			</td>
			<td class="text-center">
				<!-- <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of> -->
				<xsl:if test="FileUrl != ''">
					<xsl:value-of disable-output-escaping="yes" select="FileSize"></xsl:value-of>
				</xsl:if>
			</td>
			<td class="text-center">
				<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
			</td>
			<td>
				<xsl:if test="FileUrl != ''">
					<a href="#">
						<xsl:attribute name="href">
							<xsl:value-of select="FileUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<span class="mdi mdi-download"></span>
					</a>
				</xsl:if>
				<xsl:if test="FileUrl = ''">
					<a>
						<xsl:if test="BriefContent!=''">

							<xsl:attribute name="href">
								<xsl:value-of select="BriefContent"></xsl:value-of>
							</xsl:attribute>
						</xsl:if>

						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<span class="mdi mdi-chevron-right"></span>
					</a>
				</xsl:if>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
