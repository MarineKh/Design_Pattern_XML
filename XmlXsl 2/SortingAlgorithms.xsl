<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:html="http://www.w3.org/1999/xhtml"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	version="1.0"
>
		<xsl:output method="html"/>
		<xsl:template match="/">
		<xsl:element name="html">
			<xsl:element name="head">
				<link rel="stylesheet" type="text/css" href="Content/Style/SortingAlgorithm.css"/>
			</xsl:element>
			<xsl:element name="body">
						<xsl:apply-templates select="algorithms/dev-process/html:embad"/>
						<xsl:apply-templates select="algorithms/comparison/html:table"/>
						<br/>
						<table id="non-cmp-sorting" class="tablesorter">
							<caption>Non-comparison sorts</caption>
							<thead>
								<tr>
									<th class="header">Name</th>
									<th class="header">Best</th>
									<th class="header">Average</th>
									<th class="header">Worst</th>
									<th class="header">Memory</th>
									<th class="header">Stable</th>
									<th class="header">Comparison</th>
									<th class="header">Other Notes</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="window/non-comparisons/non-comparison">
									<tr>
										<th>
											<a href="{@url}">
												<xsl:value-of select="@value"/>
											</a>
										</th>
										<xsl:for-each select="basics">
											<xsl:choose>
												<xsl:when test ="@class='best'">
													<td class="best">
														<xsl:apply-templates/>
													</td>
												</xsl:when>
												<xsl:when test ="@class='avg'">
													<td class="avg">
														<xsl:apply-templates/>
													</td>
												</xsl:when>
												<xsl:when test ="@class='worst'">
													<td class="worst">
														<xsl:apply-templates/>
													</td>
												</xsl:when>
												<xsl:otherwise>
													<td style = " background-color: #f9f9f9;">
														<xsl:apply-templates/>
													</td>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
										<td>
											<xsl:value-of select="@desc"/>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
						<table id="imp-sorting" class="tablesorter">
							<thead>
								<tr>
									<th class="header">Name</th>
									<th class="header">Best</th>
									<th class="header">Average</th>
									<th class="header">Worst</th>
									<th class="header">Memory</th>
									<th class="header">Stable</th>
									<th class="header">Comparison</th>
									<th class="header">Other Notes</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="window/impracticals/impractical">
									<tr>
										<th>
											<a href="{@url}">
												<xsl:value-of select="@value"/>
											</a>
										</th>
										<xsl:for-each select="basics">
											<xsl:choose>
												<xsl:when test ="@class='best'">
													<td class="best">
														<xsl:apply-templates/>
													</td>
												</xsl:when>
												<xsl:when test ="@class='avg'">
													<td class="avg">
														<xsl:apply-templates/>
													</td>
												</xsl:when>
												<xsl:when test ="@class='worst'">
													<td class="worst">
														<xsl:apply-templates/>
													</td>
												</xsl:when>
												<xsl:otherwise>
													<td style = " background-color: #f9f9f9;">
														<xsl:apply-templates/>
													</td>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
										<td>
											<xsl:value-of select="@desc"/>
										</td>
									</tr>
								</xsl:for-each>
							</tbody>
						</table>
						<table>
							<thead>
								<tr>
									<th>
										<xsl:for-each select="window/SortingAlgorithms/cell">
											<a href="{@url}">
												<xsl:value-of select="value"/>
												<xsl:value-of select="url"/>
											</a>
											<p style="display:inline;">
												<xsl:value-of select="vdot"/>
											</p>
										</xsl:for-each>
									</th>
									<th>
										<xsl:value-of select="window/SortingAlgorithms/caption"/>
									</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="window/SortingAlgorithms/trCell">
									<xsl:choose>
										<xsl:when test="position() mod 2 = 0">
											<tr>
												<th>
													<xsl:for-each select="thCell/thlink">
														<a href="{@url}" style="display:inline;">
															<xsl:value-of select="value"/>
															<xsl:value-of select="url"/>
														</a>
													</xsl:for-each>
													<xsl:for-each select="thCell/thP">
														<xsl:value-of select="value"/>
													</xsl:for-each>
												</th>
												<td>
													<xsl:for-each select="tdCell/link">
														<a href="{@url}" style="display:inline;">
															<xsl:value-of select="value"/>
															<xsl:value-of select="url"/>
														</a>
														<p style="display:inline;">
															<xsl:value-of select="dot"/>
														</p>
													</xsl:for-each>
												</td>
											</tr>
										</xsl:when>
										<xsl:otherwise>
											<tr>
												<th bgcolor="#ddddff">
													<xsl:for-each select="thCell/thlink">
														<a href="{@url}" style="display:inline;">
															<xsl:value-of select="value"/>
															<xsl:value-of select="url"/>
														</a>
													</xsl:for-each>
													<xsl:for-each select="thCell/thP">
														<xsl:value-of select="value"/>
													</xsl:for-each>
												</th>
												<td>
													<xsl:for-each select="tdCell/link">
														<a href="{@url}" style="display:inline;">
															<xsl:value-of select="value"/>
															<xsl:value-of select="url"/>
														</a>
														<p style="display:inline;">
															<xsl:value-of select="dot"/>
														</p>
													</xsl:for-each>
												</td>
											</tr>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
							</tbody>
						</table>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	<xsl:template match="algorithms/comparison/html:table">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="algorithms/dev-process/html:embad">
		<xsl:copy-of select="."/>
	</xsl:template>
</xsl:stylesheet>