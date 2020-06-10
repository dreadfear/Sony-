<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="blog-detail-display">
			<div class="blog-detail-heading">
				<div class="container">
					<a class="btn-back btn btn-primary" href="#">
						<xsl:attribute name="href">
							<xsl:value-of select="/NewsDetail/ZoneUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:text disable-output-escaping="yes">Trở lại trang danh sách</xsl:text>

					</a>
					<div class="briefcontent text-center">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate"></xsl:value-of>
						</time>
						<h1>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h1>
						<p>
							<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes">
							</xsl:value-of>
						</p>
					</div>
				</div>
			</div>
			<div class="blog-detail-content">
				<div class="container">
					<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
					<div class="text-center">
						<a class="btn-back btn btn-primary" href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="/NewsDetail/ZoneUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text disable-output-escaping="yes">Trở lại trang danh sách</xsl:text>
						</a>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

</xsl:stylesheet>