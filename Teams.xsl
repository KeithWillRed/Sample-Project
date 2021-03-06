<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<style>
				  table {
				    border-collapse: collapse;
				  }
				  td, th {
				    border: 1px solid #999;
				    padding: 0.5rem;
				    text-align: left;
				  }
				  th {
				    font-weight: bold;
				  }
			  </style>
			</head>
			<body>
				<table>
					<tr>
						<th>Name</th>
						<th>Location</th>
						<th>Captain</th>
						<th>Nickname</th>
					</tr>
					<xsl:for-each select="myTeams/team">
							<tr>
								<td>
									<xsl:value-of select="Name"/>
								</td>
								<td>
									<xsl:value-of select="Location"/>
								</td>
								<td>
									<xsl:value-of select="Captain"/>
								</td>
								<td>
									<xsl:value-of select="Nickname"/>
								</td>
							</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>