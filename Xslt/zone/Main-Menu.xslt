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
					<div class="mega-title">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
						<em class="lnr lnr-chevron-down"></em>
					</div>
					<div class="mega-menu">
						<div class="back-previous"><em class="lnr lnr-chevron-left"></em></div>
						<div class="container">
							<div class="row">
								<xsl:apply-templates select="Zone" mode="Mega"></xsl:apply-templates>
								<xsl:if test="ZoneId != 228">
									<div class="mega-nav-first-level menu-view-all-link col w-full md:w-1/2 lg:w-3/12">
										<div class="first-level-title">
											<a class="mega-link">
												<xsl:attribute name="href">
													<xsl:value-of select="Url"></xsl:value-of>
												</xsl:attribute>
												<xsl:attribute name="title">
													<xsl:value-of select="Title"></xsl:value-of>
												</xsl:attribute>
												<span>
													<xsl:value-of disable-output-escaping="yes"
														select="/ZoneList/ViewAllText">
													</xsl:value-of>
												</span>
											</a>
										</div>

									</div>

								</xsl:if>

							</div>
							<xsl:if test="ZoneId=228">
								<div class="footer-mega">
									<a class="btn btn-view-more">
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										<span>
											<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ViewAllText">
											</xsl:value-of>
										</span>
									</a>
									<a class="btn btn-primary yellow">
										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>
										<span>
											<xsl:value-of disable-output-escaping="yes"
												select="/ZoneList/WarrantyCheckText"></xsl:value-of>
										</span>
									</a>
								</div>
							</xsl:if>
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
		<div class="mega-nav-first-level col w-full  md:w-1/2 lg:w-3/12">
			<div class="first-level-title">
				<a class="mega-link">
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
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</span>
				</a>
				<em class="lnr lnr-chevron-down"></em>
			</div>
			<xsl:if test="count(Zone) > 0">
				<ul class="mega-nav-second-level">
					<div class="back-previous"><em class="lnr lnr-chevron-left"></em></div>
					<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>
				</ul>
			</xsl:if>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode='Sub'>
		<li>
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
	</xsl:template>
</xsl:stylesheet>
