<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="totalSolde">
		<xsl:value-of
			select="sum(BanqueService/getComptes/solde)" />
	</xsl:variable>
	<xsl:variable name="totalSoldefiltre">
		<xsl:value-of
			select="sum(BanqueService/getComptes[substring(dateCreation, 1, 4) > 2000]/solde)" />
	</xsl:variable>
	<xsl:template match="/">
		<html>
			<head>
				<title>Liste des comptes</title>
			</head>
			<body>
				<h1>Liste des comptes</h1>
				<table>
					<tr>
						<th>Code</th>
						<th>Solde</th>
						<th>Date de creation</th>
					</tr>
					<xsl:for-each select="BanqueService/getComptes">
						<tr>
							<td>
								<xsl:value-of select="code" />
							</td>
							<td>
								<xsl:value-of select="solde" />
							</td>
							<td>
								<xsl:value-of select="dateCreation" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<p>
					Somme totale des soldes :
					<xsl:value-of select="$totalSolde" />
				</p>
				<h1>Liste des comptes crees apres 2000</h1>
				<table>
					<tr>
						<th>Code</th>
						<th>Solde</th>
						<th>Date de creation</th>
					</tr>
					<xsl:for-each
						select="BanqueService/getComptes[substring(dateCreation, 1, 4) > 2000]">
						<tr>
							<td>
								<xsl:value-of select="code" />
							</td>
							<td>
								<xsl:value-of select="solde" />
							</td>
							<td>
								<xsl:value-of select="dateCreation" />
							</td>
						</tr>
					</xsl:for-each>
				</table>

				<p>
					Somme totale des soldes des comptes crees apres 2000:
					<xsl:value-of select="$totalSoldefiltre" />
				</p>




			</body>
		</html>
	</xsl:template>




</xsl:stylesheet>