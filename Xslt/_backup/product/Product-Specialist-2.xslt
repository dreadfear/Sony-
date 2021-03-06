<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="product-specialist-display product-section ">
			<div class="container">
				<h2 class="head-title text-center">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
				</h2>
				<div class="zone-description">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneDescription"></xsl:value-of>
				</div>
				<div class="product-status-wrapper">
					<div class="tab-item active" id='product-tab-2'>
						<div class="row product-status-item ">
							<xsl:apply-templates select="/ProductList/Product" mode='Available'></xsl:apply-templates>
						</div>
						<div class="button-wrapper-left ">
							<a class="btn btn-primary" href="javascript:void(0)" data-type='product-tab-1'><span
									class='text-1'>
									<xsl:value-of disable-output-escaping="yes" select="/ProductList/OutStock">
									</xsl:value-of>
								</span>
							</a>
						</div>
					</div>
					<div class="tab-item" id='product-tab-1'>
						<div class=" row product-status-item ">
							<xsl:apply-templates select="/ProductList/Product" mode='Unavailable'></xsl:apply-templates>
						</div>
						<div class="button-wrapper-left ">
							<a class="btn btn-primary" href="javascript:void(0)" data-type='product-tab-2'>
								<span class='text-2'>
									<xsl:value-of disable-output-escaping="yes" select="/ProductList/AvailableText">
									</xsl:value-of>
								</span>

							</a>
						</div>

					</div>
				</div>
			</div>
		</section>


		<section class="select-product-compare product-section">
			<div class="container">
				<h2 class="head-title">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/PCText"></xsl:value-of>
				</h2>
				<div class="btn-remove-compare"><em class="lnr lnr-cross"></em></div>
				<div class="row">
					<!-- <div class="col w-full sm:w-1/2 lg:w-4/12">
						<div class="col-match-height">
							<div class="figure-product">
								<div class="figure-image"><a href="#"><img src="./img/product/3.png" alt="" /></a></div>
								<div class="figcaption">
									<div class="title">
										<h2><a href="#">máy quay chuyên dụngg</a></h2>
									</div>
								</div>
							</div>
						</div>
					</div> -->

					<div class="col w-full sm:w-1/2 lg:w-4/12">
						<div class="col-match-height">
							<div class="figure-add-more"><em class="lnr lnr-cross"></em></div>
						</div>
					</div>
				</div>
				<div class="button-wrapper-center"><a class="btn btn-primary yellow" href="#"><span>
							<xsl:value-of disable-output-escaping="yes" select="/ProductList/CompareText">
							</xsl:value-of>
						</span></a>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product" mode='Available'>
		<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
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
							<div class="button-wrapper-left"><a class="btn btn-compare"><em
										class="mdi mdi-repeat"></em><span>
										<xsl:value-of disable-output-escaping="yes" select="/ProductList/CompareText">
										</xsl:value-of>
									</span></a></div>
						</div>
					</div>
				</div>
			</div>

		</xsl:if>
	</xsl:template>
	<xsl:template match="Product" mode='Unavailable'>


		<xsl:if test="floor(ShowOption div 2) mod 2 = 1">

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
								<h2>
									<a>
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									</a>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h2><span class="product-disable">
									<xsl:value-of disable-output-escaping="yes" select="/ProductList/OutStockText">
									</xsl:value-of>
								</span>
							</div>
							<div class="caption">
								<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>