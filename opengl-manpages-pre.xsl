<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output
        doctype-public="-//OASIS//DTD DocBook MathML Module V1.1CR1//EN"
        doctype-system="http://www.oasis-open.org/docbook/xml/mathml/1.1CR1/dbmathml.dtd"
        cdata-section-elements="book"
        indent="yes"
        encoding="UTF-8"
        />

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="refentry/refmeta">
        <xsl:element name="info">
            <xsl:element name="productname">
                <xsl:attribute name="class">trade</xsl:attribute>
                <xsl:text>OpenGL</xsl:text>
            </xsl:element>
            <xsl:element name="date">
                <xsl:text>UPSTREAM_DATE</xsl:text>
            </xsl:element>
        </xsl:element>
        <xsl:element name="refmeta">
            <xsl:apply-templates select="@*|node()"/>
            <xsl:element name="refmiscinfo">
                <xsl:attribute name="class">manual</xsl:attribute>
                <xsl:text>OpenGL Manual</xsl:text>
            </xsl:element>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
