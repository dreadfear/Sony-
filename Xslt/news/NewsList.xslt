<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row">
			<div class="col w-full lg:w-1/2">
				<div class="col-match-height">
					<xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>
				</div>
			</div>
			<div class="col w-full lg:w-1/2">
				<div class="col-match-height mobile-auto">
					<xsl:apply-templates select="/NewsList/News" mode="Part"></xsl:apply-templates>
				</div>
			</div>
		</div>
		<div class="row">
			<xsl:apply-templates select="/NewsList/News" mode="Small"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Big">
		<xsl:if test="position() = 1">
			<div class="figure-blog big">
				<div class="image-wrapper shine">
					<a>
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
					</a>
				</div>
				<div class="figcaption">
					<h2>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</h2>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</p>
					<div class="button-wrapper">
						<a class="btn btn-view-more" href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<span>View more ></span>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Part">
		<xsl:if test="position() > 1 and position() &lt; 6">
			<div class="figure-blog small">
				<div class="image-wrapper zoom-in">
					<a>
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
					</a>
				</div>
				<div class="figcaption">
					<h2>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
					</h2>
					<div class="button-wrapper">
						<a class="btn btn-view-more" href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<span>View more ></span>
						</a>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Small">
		<xsl:if test="position() > 5">
			<div class="col w-full sm:w-1/2 lg:w-4/12">
				<div class="col-match-height">
					<div class="figure-blog">
						<div class="image-wrapper">
							<a>
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
							</a>
						</div>
						<div class="figcaption">
							<h2>
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select="Title"></xsl:value-of>
								</a>
							</h2>
							<p>
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
							</p>
							<div class="button-wrapper">
								<a class="btn btn-view-more" href="#">
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<span>View more ></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>