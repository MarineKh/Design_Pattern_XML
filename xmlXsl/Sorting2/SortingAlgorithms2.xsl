<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/">
	<xsl:element name="html">
		<xsl:element name="head">
			<link rel="stylesheet" type="text/css" href="SortingAlgorithms.css"/>
		</xsl:element>
		<xsl:element name="body">
					
			<xsl:element name="table">
				<xsl:for-each select="comparison/heading">
					<xsl:element name="caption">
						<xsl:element name="a">
							<xsl:attribute name="title">
								<xsl:value-of select="@title"/>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="@href"/>
							</xsl:attribute>
							<xsl:value-of select="@value"/>
						</xsl:element>
					</xsl:element>
				</xsl:for-each>

				<xsl:for-each select="comparison/title">

				<xsl:element name="tr">
					<xsl:element name="th">
						<xsl:value-of select="@isName"/>
					</xsl:element>
					<xsl:element name="th">
						<xsl:value-of select="@isBest"/>
					</xsl:element>
					<xsl:element name="th">
						<xsl:value-of select="@isAverage"/>
					</xsl:element>
					<xsl:element name="th">
						<xsl:value-of select="@isWorst"/>
					</xsl:element>
					<xsl:element name="th">
						<xsl:value-of select="@isMemory"/>
					</xsl:element>
					<xsl:element name="th">
						<xsl:value-of select="@isStable"/>
					</xsl:element>
					<xsl:element name="th">
						<xsl:value-of select="@isMethod"/>
					</xsl:element>
					<xsl:element name="th">
						<xsl:value-of select="@isOtherNotes"/>
					</xsl:element>
				</xsl:element>
					</xsl:for-each>

				<xsl:for-each select="comparison/row">


				<xsl:element name="tr">
					<xsl:element name="td">
						<xsl:element name="a">
							<xsl:attribute name="title">
								<xsl:value-of select="@title"/>
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="@href"/>
							</xsl:attribute>
							<xsl:value-of select="@name"/>
								<xsl:element name="a">
									<xsl:attribute name="title">
										<xsl:value-of select="before/@title"/>
									</xsl:attribute>
									<xsl:attribute name="href">
										<xsl:value-of select="before/@href"/>
									</xsl:attribute>
									<xsl:value-of select="before/@value"/>
								</xsl:element> 
									<xsl:value-of select="proxyBef/@value"/>
								<xsl:element name="a">
									<xsl:attribute name="title">
										<xsl:value-of select="after/@title"/>
									</xsl:attribute>
									<xsl:attribute name="href">
										<xsl:value-of select="after/@href"/>
									</xsl:attribute>
									<xsl:value-of select="after/@value"/>
								</xsl:element>  <!-- a -->
									 <xsl:value-of select="proxyAft/@value"/>
								<xsl:element name="a">
									<xsl:attribute name="title">
										<xsl:value-of select="inplaceLink/@title"/>
									</xsl:attribute>
									<xsl:attribute name="href">
										<xsl:value-of select="inplaceLink/@href"/>
									</xsl:attribute>
									<xsl:value-of select="inplaceLink/@value"/>
								</xsl:element> <!-- a -->
									<xsl:value-of select="inplace/@value"/>
						</xsl:element>
					</xsl:element>
			
					<xsl:choose>
						<xsl:when test="@best = 'n'">
                		<xsl:element name="td">
                  			<xsl:attribute name="class">design_true</xsl:attribute>
                    		<xsl:value-of select="@best"/>
                		</xsl:element>
         				</xsl:when>
         			<xsl:otherwise>
			            <xsl:element name="td">
			              <xsl:attribute name="class">design_gray</xsl:attribute>
			                <xsl:value-of select="@best"/>
			              </xsl:element>
			          </xsl:otherwise>
					</xsl:choose>

					<xsl:choose>
						<xsl:when test="@average = 'n + 2^k'">
                		<xsl:element name="td">
                  			<xsl:attribute name="class">design_true</xsl:attribute>
                    		<xsl:value-of select="@average"/>
                		</xsl:element>
         				</xsl:when>
         				<xsl:when test="@average = 'n + k'">
                		<xsl:element name="td">
                  			<xsl:attribute name="class">design_true</xsl:attribute>
                    		<xsl:value-of select="@average"/>
                		</xsl:element>
         				</xsl:when>
         				<xsl:when test="@average = 'n + r'">
                		<xsl:element name="td">
                  			<xsl:attribute name="class">design_true</xsl:attribute>
                    		<xsl:value-of select="@average"/>
                		</xsl:element>
         				</xsl:when>
         				<xsl:when test="@average = 'n . k/d'">
                		<xsl:element name="td">
                  			<xsl:attribute name="class">design_true</xsl:attribute>
                    		<xsl:value-of select="@average"/>
                		</xsl:element>
         				</xsl:when>
					</xsl:choose>
			
					<xsl:choose>
						<xsl:when test="@worst = 'n + 2^k'">
							<xsl:element name="td">
								<xsl:attribute name="class">design_true</xsl:attribute>
								<xsl:value-of select="@worst"/>
							</xsl:element>
						</xsl:when>
						<xsl:when test="@worst = 'n + r'">
							<xsl:element name="td">
								<xsl:attribute name="class">design_true</xsl:attribute>
								<xsl:value-of select="@worst"/>
							</xsl:element>
						</xsl:when>
						<xsl:when test="@worst = 'n . k/d'">
							<xsl:element name="td">
								<xsl:attribute name="class">design_true</xsl:attribute>
								<xsl:value-of select="@worst"/>
							</xsl:element>
						</xsl:when>
						<xsl:when test="@worst = 'n .(k/s + d)'">
							<xsl:element name="td">
								<xsl:attribute name="class">design_true</xsl:attribute>
								<xsl:value-of select="@worst"/>
							</xsl:element>
						</xsl:when>
						<xsl:otherwise>
			            	<xsl:element name="td">
			              		<xsl:attribute name="class">design_false</xsl:attribute>
			               		<xsl:value-of select="@worst"/>
			                </xsl:element>
			            </xsl:otherwise>
					</xsl:choose>



					<xsl:element name="td">
						<xsl:value-of select="@memory"/>
					</xsl:element>

					<xsl:choose>
						<xsl:when test="@stable = 'Yes'">
                		<xsl:element name="td">
                  			<xsl:attribute name="class">design_true</xsl:attribute>
                    		<xsl:value-of select="@stable"/>
                		</xsl:element>
         				</xsl:when>
         			<xsl:otherwise>
			            <xsl:element name="td">
			              <xsl:attribute name="class">design_false</xsl:attribute>
			                <xsl:value-of select="@stable"/>
			              </xsl:element>
			          </xsl:otherwise>
					</xsl:choose>

					<xsl:element name="td">
						<xsl:value-of select="@method"/>
					</xsl:element>
			
					<xsl:element name="td">
						<xsl:value-of select="@other"/>
					</xsl:element>
					

				</xsl:element>
			</xsl:for-each>
			
			  <xsl:element name="Pattern">
                <xsl:value-of select="Pattern"/>
              </xsl:element>



				</xsl:element> <!-- table -->
			</xsl:element> <!-- body --> 
		</xsl:element> <!-- html -->

	</xsl:template>
</xsl:stylesheet>
