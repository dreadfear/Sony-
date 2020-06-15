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
					<div class="tab-item active">
						<div class="row product-status-item ">
							<xsl:apply-templates select="/ProductList/Product" mode='Available'></xsl:apply-templates>
						</div>
						<div class="button-wrapper-left ">
							<a class="btn btn-primary" href="javascript:void(0)" data-type='product-tab-1'><span
									class='text-1'>
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
					<div class="tab-item">
						<div class=" row product-status-item ">
							<xsl:apply-templates select="/ProductList/Product" mode='Unavailable'></xsl:apply-templates>
						</div>
						<div class="button-wrapper-left ">
							<a class="btn btn-primary" href="javascript:void(0)" data-type='product-tab-1'><span
									class='text-1'>
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
				</div>
				</div>
		</section>

		<xsl:if test="count(/ProductList/Compared) > 0">
			<section class="select-product-compare product-section">
				<div class="container">
					<h2 class="head-title">So sánh sản phẩm</h2>
					<div class="btn-remove-compare"><em class="lnr lnr-cross"></em></div>
					<div class="row">
						<xsl:apply-templates select="/ProductList/Compared"></xsl:apply-templates>
						
						<xsl:variable name="CompareNum">
							<xsl:value-of select="count(/ProductList/Compared)"></xsl:value-of>
						</xsl:variable>
						
						<!-- <div class="col w-full sm:w-1/2 lg:w-4/12"> -->
							<!-- <div class="col-match-height"> -->
								<!-- <div class="figure-product"> -->
									<!-- <div class="figure-image"><a href="#"><img src="./img/product/3.png" alt="" /></a></div> -->
									<!-- <div class="figcaption"> -->
										<!-- <div class="title"> -->
											<!-- <h2><a href="#">máy quay chuyên dụngg</a></h2> -->
										<!-- </div> -->
									<!-- </div> -->
								<!-- </div> -->
							<!-- </div> -->
						<!-- </div> -->

						<!-- <div class="col w-full sm:w-1/2 lg:w-4/12"> -->
							<!-- <div class="col-match-height"> -->
								<!-- <div class="figure-add-more"><em class="lnr lnr-cross"></em></div> -->
							<!-- </div> -->
						<!-- </div> -->
					</div>
					<div class="button-wrapper-center"><a class="btn btn-primary yellow" href="/Product/Compare.aspx"><span>So sánh</span></a>
					</div>
				</div>
			</section>
		</xsl:if>
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
							<div class="button-wrapper-left"><a class="btn btn-compare">
								<xsl:attribute name="data-productid">
										<xsl:value-of select="ProductId"></xsl:value-of>
								</xsl:attribute>
								<em class="mdi mdi-repeat"></em><span>
										<xsl:value-of disable-output-escaping="yes" select="/ProductList/CompareText">
										</xsl:value-of>
									</span>
									
							</a></div>
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

	</xsl:template>
	
	<xsl:template match="Compared">
		<div class="col w-full sm:w-1/2 lg:w-4/12">
			<div class="col-match-height">
				<div class="figure-product">
					<div class="figure-image"><a href="#">
						<img src="./img/product/3.png" alt="" />
						<img alt="" >
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl" />
							</xsl:attribute>
						</img>
					</a></div>
					<div class="figcaption">
						<div class="title">
							<h2>
								<a href="#">máy quay chuyên dụngg</a>
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url" />
									</xsl:attribute>
									<xsl:value-of select="Title" />
								</a>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- <xsl:if test="position() < 1 and position() = last()"> -->
		<!-- <xsl:if test="position() = last() and position() &gt; 1"> -->
		<xsl:if test="position() &lt; 3 and position() = last()">
			<div class="col w-full sm:w-1/2 lg:w-4/12">
					<div class="col-match-height">
						<div class="figure-add-more"><em class="lnr lnr-cross"></em></div>
					</div>
				</div>
		</xsl:if>
		
	</xsl:template>

</xsl:stylesheet>