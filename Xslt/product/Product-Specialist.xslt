<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="product-specialist-display product-section">
			<div class="container">
				<h2 class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
				</h2>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneDescription"></xsl:value-of>
				</div>
				<div class=" product-status-wrapper">
					<div class="row product-status-item">
						<xsl:apply-templates select="/ProductList/Product" mode='Available'></xsl:apply-templates>
					</div>
					<div class="row hidden product-status-item">
						<xsl:apply-templates select="/ProductList/Product" mode='Unavailable'></xsl:apply-templates>
					</div>
				</div>
				<div class="button-wrapper-left"><a class="btn btn-primary"><span class='text-1'>
							<xsl:value-of disable-output-escaping="yes" select="/ProductList/UnavailableText">
							</xsl:value-of>
						</span>
						<span class='text-2'>
							<xsl:value-of disable-output-escaping="yes" select="/ProductList/AvailableText">
							</xsl:value-of>
						</span>

					</a>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product" mode='Available'>

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
								<h2><a>
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>

										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
										<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

									</a></h2>
							</div>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>

	</xsl:template>
	<!-- <xsl:template match="Product" mode='Unavailable'>
		<xsl:if test="Url =''">

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
								<h2><a>
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>

										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
										<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

									</a></h2>

							</div>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template> -->

</xsl:stylesheet>