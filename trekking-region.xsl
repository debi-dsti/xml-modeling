<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">

		<p>
			<xsl:apply-templates select="tours"/>
			<xsl:apply-templates select="city"/>
			<xsl:apply-templates select="education"/>
			<xsl:apply-templates select="charity"/>
			<xsl:apply-templates select="main"/>
			<xsl:apply-templates select="rural"/>
		</p>
		<html> 
			<body> 
				<h3>Tours</h3> 
				<table border = "1"> 
					<tr bgcolor = "#ff0000"> 

						<th>Tours</th> 
						<th>City Tours</th>  
						<th>Educational Tours</th> 
						<th>Main City Tours</th>  
						<th>Charity tours</th> 
						<th>Rural City Tours</th>  
					</tr>

					<xsl:for-each select = "tours/tours"> 
						<xsl:for-each select = "tours/city"> 
							<xsl:for-each select = "tours/education"> 
								<xsl:for-each select = "tours/main">
									<xsl:for-each select = "tours/charity"> 
										<xsl:for-each select = "tours/rural">
											<xsl:if test=" tours/TOURS='city' and tours/RURAL!='charity' and tours/MAIN!='main_city_tour' ">
												<tr> 
													<td><xsl:value-of select = "city"/></td> 
													<td><xsl:value-of select = "charity"/></td> 
													<td><xsl:value-of select = "main"/></td> 


												</tr> 
											</xsl:if>
										</xsl:for-each> 
										<xsl:sort/>
									</xsl:for-each> 
								</xsl:for-each> 
							</xsl:for-each> 
						</xsl:for-each> 
					</xsl:for-each> 
				</table> 
			</body> 
		</html> 
	</xsl:template>  
</xsl:stylesheet>