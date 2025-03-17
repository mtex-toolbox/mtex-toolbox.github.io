<?xml version="1.0" encoding="utf-8"?>

<!--
This is an XSL stylesheet which converts mscript XML files into HTML.
Use the XSLT command to perform the conversion.
-->

<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> <!ENTITY reg "&#174;"> ]>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:mwsh="http://www.mathworks.com/namespace/mcode/v1/syntaxhighlight.dtd"
  exclude-result-prefixes="mwsh">
  
  <xsl:output method="html" indent="no"/>
  <!--doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN"-->
  <xsl:variable name="toolbox" select="document('toolbox.xml')/toolbox"/>
  <xsl:variable name="filename"><xsl:value-of select="substring(mscript/m-file,8)"/></xsl:variable>
 
  <xsl:variable name="title">
    <xsl:variable name="dTitle" select="//steptitle[@style='document']"/>
    <xsl:choose>
      <xsl:when test="$dTitle"><xsl:value-of select="$dTitle"/></xsl:when>
      <xsl:otherwise><xsl:value-of select="mscript/m-file"/></xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:include href="makelink.xsl"/>

  <!-- here everything starts -->
  <!--last_updated: <xsl:value-of select="$toolbox/lastUpdated"/>-->
  <xsl:template match="mscript">---
title: <xsl:value-of select="$title"/>

sidebar: <xsl:value-of select="$toolbox/folder"/>_sidebar
permalink: <xsl:value-of select="$toolbox/htmlTarget"/>
folder: <xsl:value-of select="$toolbox/folder"/>
toc: false
---
<html>
  <!-- head -->
  <head>
    <xsl:comment>
      This HTML was auto-generated from MATLAB code.
      To make changes, update the MATLAB code and republish this document.
    </xsl:comment>

    <title><xsl:value-of select="$title"/></title>

    <link rel="schema.DC" href="http://purl.org/dc/elements/1.1/" />

    <meta name="DC.source">
      <xsl:attribute name="content"><xsl:value-of select="m-file"/>.m</xsl:attribute>
    </meta>

    <xsl:call-template name="stylesheet"/>

  </head>

  <body>

    <xsl:call-template name="header"/>

    <div>

    <!-- Determine if the there should be an introduction section. -->
    <xsl:variable name="hasIntro" select="count(cell[@style = 'overview'])"/>

    <!-- If there is an introduction, display it. -->
    <xsl:if test = "$hasIntro">
      <xsl:comment>introduction</xsl:comment>
      <xsl:apply-templates select="cell[1]/text"/>
      <!-- There can be text output if there was a parse error. -->
      <xsl:apply-templates select="cell[1]/mcodeoutput"/>
      <xsl:comment>/introduction</xsl:comment>
    </xsl:if>


    <xsl:variable name="body-cells" select="cell[not(@style = 'overview')]"/>

    <!-- Loop over each cell -->
    <xsl:for-each select="$body-cells">
        <!-- Title of cell -->
        <xsl:if test="steptitle">
          <xsl:if test="(steptitle != 'Open in Editor') and (steptitle != 'View Code')">
            <xsl:variable name="headinglevel">
              <xsl:choose>
                <xsl:when test="steptitle[@style = 'document']">h1</xsl:when>
                <xsl:otherwise>h2</xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
            <xsl:element name="{$headinglevel}">
              <xsl:if test="not(steptitle[@style = 'document'])">
                <xsl:attribute name="id">
                  <xsl:value-of select="position()"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:apply-templates select="steptitle"/>
            </xsl:element>
          </xsl:if>
        </xsl:if>

        <!-- Contents of each cell -->
        <xsl:apply-templates select="text"/>
        <xsl:apply-templates select="mcode-xmlized"/>
        <xsl:apply-templates select="mcodeoutput|img"/>

    </xsl:for-each>

    <xsl:call-template name="footer"/>

    </div>

    <xsl:apply-templates select="originalCode"/>

  </body>
</html>
</xsl:template>

<xsl:template name="stylesheet">
</xsl:template>

<!-- Header -->
<xsl:template name="header">
  <font size="2">
    <a><xsl:attribute name="href">https://github.com/mtex-toolbox/examples/blob/master<xsl:value-of select="$toolbox/pageSource"/></xsl:attribute>
    edit page</a>
    author: <xsl:value-of select="$toolbox/author"/>
  </font>
</xsl:template>

<!-- Footer -->
<xsl:template name="footer">
</xsl:template>

<!-- Contents -->
<xsl:template name="contents">
  <xsl:param name="body-cells"/>
  <h2>Contents</h2>
  <div><ul>
    <xsl:for-each select="$body-cells">
      <xsl:if test="./steptitle">
        <li><a><xsl:attribute name="href">#<xsl:value-of select="position()"/></xsl:attribute><xsl:apply-templates select="steptitle"/></a></li>
      </xsl:if>
    </xsl:for-each>
  </ul></div>
</xsl:template>


<!-- HTML Tags in text sections -->
<xsl:template match="p">
  <p><xsl:apply-templates/></p>
</xsl:template>
<xsl:template match="ul">
  <div><ul><xsl:apply-templates/></ul></div>
</xsl:template>
<xsl:template match="ol">
  <div><ol><xsl:apply-templates/></ol></div>
</xsl:template>
<xsl:template match="li">
  <li><xsl:apply-templates/></li>
</xsl:template>
<xsl:template match="pre">
  <xsl:choose>
    <xsl:when test="@class='error'">
      <pre class="error"><xsl:apply-templates/></pre>
    </xsl:when>
    <xsl:otherwise>
      <pre><xsl:apply-templates/></pre>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
<xsl:template match="b">
  <b><xsl:apply-templates/></b>
</xsl:template>
<xsl:template match="i">
  <i><xsl:apply-templates/></i>
</xsl:template>
<xsl:template match="tt">
  <code class="language-plaintext highlighter-rouge"><xsl:apply-templates/></code>
</xsl:template>
<xsl:template match="a">
  <a>
    <xsl:attribute name="href"><xsl:value-of select="@href"/></xsl:attribute>
    <xsl:apply-templates/>
  </a>
</xsl:template>
<xsl:template match="html">
    <xsl:value-of select="@text" disable-output-escaping="yes"/>
</xsl:template>
<xsl:template match="latex"/>

<!--replace tt by inline code -->
<!-- <code class="language-plaintext highlighter-rouge">fileName.ctf</code> -->
<!--<xsl:template match="tt">
  <code class="language-plaintext highlighter-rouge"><xsl:value-of select="."/></code>
</xsl:template>-->

<!-- Detecting M-Code in Comments-->
<xsl:template match="text/mcode-xmlized">
{% highlight matlab %}
<xsl:value-of select="." disable-output-escaping="yes"/>
{% endhighlight %}
</xsl:template>


<!-- Code input -->
<xsl:template match="mcode-xmlized">
  <xsl:variable name="trimmedText">
     <xsl:call-template name="trim">
       <xsl:with-param name="text" select="."/>
     </xsl:call-template>
   </xsl:variable>
{% highlight matlab %}
<xsl:value-of select="$trimmedText" disable-output-escaping="yes"/>
{% endhighlight %}
</xsl:template>

<!-- Code output -->
<xsl:template match="mcodeoutput">
   <xsl:variable name="trimmedText">
     <xsl:call-template name="trim">
       <xsl:with-param name="text" select="."/>
     </xsl:call-template>
   </xsl:variable>
{% highlight plaintext %}
<xsl:value-of select="$trimmedText" disable-output-escaping="yes"/>
{% endhighlight %}
</xsl:template>

<!-- Images -->

<xsl:template match="img[@class='equation']">
  {% include inline_image.html file="<xsl:call-template name="backreplacelinkdot"><xsl:with-param name="string" select="@src"/></xsl:call-template>" %}
</xsl:template>

<xsl:template match="img">
<center>
{% include inline_image.html file="<xsl:call-template name="backreplacelinkdot"><xsl:with-param name="string" select="@src"/></xsl:call-template>" %}
</center>
</xsl:template>

<!-- Stash original code in HTML for easy slurping later. -->
<xsl:template match="originalCode">
</xsl:template>

<!-- Colors for syntax-highlighted input code -->

<xsl:template match="mwsh:code">
  <xsl:apply-templates/>
</xsl:template>
<xsl:template match="mwsh:keywords">
  <span class="keyword"><xsl:value-of select="."/></span>
</xsl:template>
<xsl:template match="mwsh:strings">
  <span class="string"><xsl:value-of select="."/></span>
</xsl:template>
<xsl:template match="mwsh:comments">
  <span class="comment"><xsl:value-of select="."/></span>
</xsl:template>
<xsl:template match="mwsh:unterminated_strings">
  <span class="untermstring"><xsl:value-of select="."/></span>
</xsl:template>
<xsl:template match="mwsh:system_commands">
  <span class="syscmd"><xsl:value-of select="."/></span>
</xsl:template>


<!-- Footer information -->

<xsl:template match="copyright">
  <xsl:value-of select="."/>
</xsl:template>
<xsl:template match="revision">
  <xsl:value-of select="."/>
</xsl:template>

<!-- Search and replace  -->
<!-- From http://www.xml.com/lpt/a/2002/06/05/transforming.html -->

<xsl:template name="globalReplace">
  <xsl:param name="outputString"/>
  <xsl:param name="target"/>
  <xsl:param name="replacement"/>
  <xsl:choose>
    <xsl:when test="contains($outputString,$target)">
      <xsl:value-of select=
        "concat(substring-before($outputString,$target),$replacement)"/>
      <xsl:call-template name="globalReplace">
        <xsl:with-param name="outputString"
          select="substring-after($outputString,$target)"/>
        <xsl:with-param name="target" select="$target"/>
        <xsl:with-param name="replacement"
          select="$replacement"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$outputString"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

</xsl:stylesheet>
