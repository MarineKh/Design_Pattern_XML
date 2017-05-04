<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<?xsl-stylesheet type="text/css" href="new.css"?>

<xsl:template match="/">
  <xsl:element name="html">
    <!-- <head> -->
    <xsl:element name="head">
    <link rel="stylesheet" type="text/css" href="content/style/new.css" />
    </xsl:element>
     <!-- <body> -->
    <xsl:element name="body">
    <!-- <table> -->
      <xsl:element name="table">
        <xsl:for-each select="catalog/caption">
          <xsl:element name="caption">
            <xsl:element name="a">
              <xsl:attribute name="title">
                <xsl:value-of select="@title"/>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="@href"/>
              </xsl:attribute>
              <xsl:value-of select="@captn"/>
            </xsl:element>
          </xsl:element> 
        </xsl:for-each> 
        <xsl:for-each select="catalog/title">
          <!-- <tr> -->
          <xsl:element name="tr">
            <xsl:element name="th">
                <xsl:value-of select="@Value"/>
            </xsl:element>
            <xsl:element name="th">
              <xsl:value-of select="@Description"/>
            </xsl:element>
            <xsl:element name="th">
              <xsl:value-of select="@DesignPatterns"/>
              <xsl:element name="a">  
                <xsl:attribute name="title">
                <xsl:value-of select="DesignPatterns/@title"/>
              </xsl:attribute>
                <xsl:attribute name="href">
                  <xsl:value-of select="DesignPatterns/@href"/>
                </xsl:attribute>
                  <xsl:value-of select="DesignPatterns"/> 
              </xsl:element>
            </xsl:element>
            
            <xsl:element name="th">
              <xsl:value-of select="@CodeComplete"/>
              <xsl:element name="a">
                 <xsl:attribute name="title">
                <xsl:value-of select="CodeComplete/@title"/>
              </xsl:attribute>
                <xsl:attribute name="href">
                  <xsl:value-of select="CodeComplete/@href"/>
                </xsl:attribute>
                <xsl:value-of select="CodeComplete"/>
              </xsl:element>
                  <xsl:element name="sup">
                    <xsl:element name="q">
                      <xsl:element name="a">
                        <xsl:attribute name="title">
                <xsl:value-of select="sup/@title"/>
              </xsl:attribute>
                        <xsl:attribute name="href">
                          <xsl:value-of select="sup/@href"/>
                        </xsl:attribute>
                        <xsl:value-of select="sup"/>
                      </xsl:element>
                    </xsl:element>
              </xsl:element>
            </xsl:element>
            
            <xsl:element name="th">
              <xsl:value-of select="@Other"/>
            </xsl:element>
          </xsl:element>
        </xsl:for-each>
        <xsl:for-each select="catalog/DesignPattern">
          <!-- <tr> -->
          <xsl:element name="tr">
            <xsl:element name="td">
            <xsl:element name="a">
              <xsl:attribute name="title">
                <xsl:value-of select="@title"/>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="@href"/>
              </xsl:attribute>
                <xsl:value-of select="@NameFactory"/>
            </xsl:element>
          </xsl:element>
            
            <xsl:element name="td">
              <xsl:value-of select="@DescriptionName"/>
              <xsl:element name="a">
                <xsl:attribute name="title">
                <xsl:value-of select="DescriptionName/@title"/>
              </xsl:attribute>
                <xsl:attribute name="href">
                  <xsl:value-of select="DescriptionName/@href"/>
                </xsl:attribute>
                <xsl:value-of select="DescriptionName"/> 
              </xsl:element>
              <xsl:element name="sup">
                <xsl:element name="a">
                   <xsl:attribute name="title">
                <xsl:value-of select="sup/@title"/>
              </xsl:attribute>
                  <xsl:attribute name="href">
                    <xsl:value-of select="sup/@href"/>
                  </xsl:attribute>
                  <xsl:value-of select="sup"/>
                </xsl:element>
              </xsl:element>
              <xsl:element name="after">
                <xsl:value-of select="after"/>
              </xsl:element>
              <xsl:element name="Proxy">
                <xsl:element name="a">
                  <xsl:attribute name="title">
                <xsl:value-of select="Proxy/@title"/>
              </xsl:attribute>
                  <xsl:attribute name="href">
                    <xsl:value-of select="Proxy/@href"/>
                  </xsl:attribute>
                  <xsl:value-of select="Proxy"/>
                </xsl:element>
              </xsl:element>
              
              <xsl:element name="Pattern">
                <xsl:value-of select="Pattern"/>
              </xsl:element>
              <xsl:element name="ConnectionPool">
                <xsl:element name="a">
                  <xsl:attribute name="title">
                <xsl:value-of select="ConnectionPool/@title"/>
              </xsl:attribute>
                  <xsl:attribute name="href">
                    <xsl:value-of select="ConnectionPool/@href"/>
                  </xsl:attribute>
                  <xsl:value-of select="ConnectionPool"/>
                </xsl:element>
              </xsl:element>
              <xsl:element name="And">
                <xsl:value-of select="And"/>
              </xsl:element>
              <xsl:element name="TheadPool">
                <xsl:element name="a">
                  <xsl:attribute name="title">
                <xsl:value-of select="TheadPool/@title"/>
              </xsl:attribute>
                  <xsl:attribute name="href">
                    <xsl:value-of select="TheadPool/@href"/>
                  </xsl:attribute>
                  <xsl:value-of select="TheadPool"/>
                </xsl:element>
              </xsl:element>
              <xsl:element name="AfterPool">
                <xsl:value-of select="AfterPool"/>
              </xsl:element>
            </xsl:element>
             <xsl:choose>
              <xsl:when test="@Design = 'Yes'">
                <xsl:element name="td">
                  <xsl:attribute name="class">design_true</xsl:attribute>
                    <xsl:value-of select="@Design"/>
                </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:element name="td">
              <xsl:attribute name="class">design_false</xsl:attribute>
                <xsl:value-of select="@Design"/>
              </xsl:element>
          </xsl:otherwise>
          </xsl:choose>
                <xsl:choose>
              <xsl:when test="@Complete = 'Yes'">
                <xsl:element name="td">
                  <xsl:attribute name="class">design_true</xsl:attribute>
                    <xsl:value-of select="@Complete"/>
                </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:element name="td">
              <xsl:attribute name="class">design_false</xsl:attribute>
                <xsl:value-of select="@Complete"/>
              </xsl:element>
          </xsl:otherwise>
          </xsl:choose>
            <xsl:choose>
              <xsl:when test="@OtherName = 'N/A'">
                <xsl:element name="td">
                  <xsl:attribute name="class">desine_other</xsl:attribute>
                  <xsl:value-of select="@OtherName"/>
                </xsl:element>
              </xsl:when>
              <xsl:otherwise>
                <xsl:element name ="td">
                  <xsl:attribute name="class">design_true</xsl:attribute>
                  <xsl:value-of select ="@OtherName"/>
                </xsl:element>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:element>
        </xsl:for-each>
    <!-- </table> -->
    </xsl:element>
  </xsl:element>
  </xsl:element>
</xsl:template>
</xsl:stylesheet>

