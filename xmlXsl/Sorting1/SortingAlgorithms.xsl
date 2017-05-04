<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">
<html>
	<head>
		<title>XML</title>
      	<link rel="stylesheet" type="text/css" href="SortingAlgorithms.css"/>
	</head>
	<body>
		<table>	
			<xsl:for-each select="root/title">
				<tr>	
					<th><xsl:value-of select="@thName"/></th>
					<th><xsl:value-of select="@thBest"/></th>
					<th><xsl:value-of select="@thAverage"/></th>
					<th><xsl:value-of select="@thWorst"/></th>
					<th><xsl:value-of select="@thMemory"/></th>
					<th><xsl:value-of select="@thStable"/></th>
					<th><xsl:value-of select="@thMethod"/></th>
					<th><xsl:value-of select="@thOtherNotes"/></th>
				</tr>	
			</xsl:for-each>
			<xsl:for-each select="root/row">
				<tr>
					<td>
						<a href="{tdName/@href}" title="{tdName/@title}">
							<xsl:value-of select="tdName"/>
						</a>
						<xsl:value-of select="@tdName"/>
					</td>

					<xsl:choose>
						<xsl:when test="@tdBest='n'">
							<td class="yes">
								<xsl:value-of select="@tdBest"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdBest='n^(log3/log1.5)'">
							<td class="no">
								<xsl:value-of select="@tdBest"/>
							</td>
						</xsl:when>
						<xsl:otherwise>
							<td class="gray">
								<xsl:value-of select="@tdBest"/>
							</td>
						</xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
						<xsl:when test="@tdAverage='S'">
							<td class="other">
								<xsl:value-of select="@tdAverage"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdAverage='(n x n!)'">
							<td class="no">
								<xsl:value-of select="@tdAverage"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdAverage='n^(log3/log1.5)'">
							<td class="no">
								<xsl:value-of select="@tdAverage"/>
							</td>
						</xsl:when>
						<xsl:otherwise>
							<td class="gray">
								<xsl:value-of select="@tdAverage"/>
							</td>
						</xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
						<xsl:when test="@tdWorst='S'">
							<td class="other">
								<xsl:value-of select="@tdWorst"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdWorst='&#8734;'">
							<td class="no">
								<xsl:value-of select="@tdWorst"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdWorst='n^(log3/log1.5)'">
							<td class="no">
								<xsl:value-of select="@tdWorst"/>
							</td>
						</xsl:when>
						<xsl:otherwise>
							<td class="gray">
								<xsl:value-of select="@tdWorst"/>
							</td>
						</xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
						<xsl:when test="@tdMemory='n²'">
							<td class="no">
								<xsl:value-of select="@tdMemory"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdMemory='n'">
							<td class="no">
								<xsl:value-of select="@tdMemory"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdMemory='1'">
							<td class="yes">
								<xsl:value-of select="@tdMemory"/>
							</td>
						</xsl:when>
						<xsl:otherwise>
							<td class="gray">
								<xsl:value-of select="@tdMemory"/>
							</td>
						</xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
						<xsl:when test="@tdStable='No'">
							<td class="no">
								<xsl:value-of select="@tdStable"/>
							</td>
						</xsl:when>
						<xsl:when test="@tdStable='Yes'">
							<td class="yes">
								<xsl:value-of select="@tdStable"/>
							</td>
						</xsl:when>
						<xsl:otherwise>
							<td class="gray">
								<xsl:value-of select="@tdStable"/>
							</td>
						</xsl:otherwise>
					</xsl:choose>
					<td>
						<xsl:value-of select="@tdMethod"/>
					</td>
					<td>
						<xsl:value-of select="@tdOther"/>
					</td>

				</tr>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
