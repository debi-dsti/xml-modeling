<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<p>
			<xsl:apply-templates select="term"/>
			<xsl:apply-templates select="payment"/>
		</p>
		<html> 
			<body> 
				<h1>Home</h1> 
				<table border = "1"> 
					<tr bgcolor = "#9acd32"> 

						<th>Trems And Condition</th> 
						<th>Payment Method</th>  
					</tr>

					<xsl:for-each select = "home/term"> 
						<xsl:for-each select = "home/payment"> 
							<xsl:if test="price &gt; 20">
								<tr> 
									<td><xsl:value-of select = "term"/></td> 
									<td><xsl:value-of select = "payment"/></td> 

									<xsl:sort select="payment"/>


								</tr> 
							</xsl:if>
						</xsl:for-each> 
					</xsl:for-each> 
				</table> 
			</body> 
		</html> 
		<xsl:sort/>
	</xsl:template>  
</xsl:stylesheet>