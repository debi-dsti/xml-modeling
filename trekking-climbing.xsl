<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<p>
			<xsl:apply-templates select="technical/>
			
			<xsl:apply-templates select="peak"/>
			<xsl:apply-templates select="expedition"/>
		</p>
		<html> 
			<body> 
				<h4>Climbing</h4> 
				<table border = "1"> 
					<tr bgcolor = "#fff000"> 

						<th>Technical Climbing</th> 
						<th>Trekking peak</th>  
						<th>Expedition</th>  
					</tr>

					<xsl:for-each select = "climbing/technical"> 
						<xsl:for-each select = "climbing/peak"> 
						<xsl:for-each select = "climbing/expedition"> 
							<xsl:if test="price &gt; 20">
								<tr> 
									<td><xsl:value-of select = "term"/></td> 
									<td><xsl:value-of select = "payment"/></td> 
									
									<xsl:if test=" climbing/technical='city' and climbing/peak!='charity' and tours/MAIN!='main_city_tour' ">

									<xsl:sort select="climbing/expedition"/>


								</tr> 
							</xsl:if>
						</xsl:for-each> 
						</xsl:for-each> 
						</xsl:for-each> 
					</xsl:for-each> 
					<xsl:sort/>
				</table> 
			</body> 
		</html> 
	</xsl:template>  
</xsl:stylesheet>