<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="about-display">
			<div class="container">
				<h1 class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of>
				</h1>
				<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/BriefContent"></xsl:value-of>
				</div>
				<div class="figure-media video">
					<div class="figure-image">
						<div class="wrapper">
							<div class="play">
								<div class="play__icon"></div>

								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>


</xsl:stylesheet>