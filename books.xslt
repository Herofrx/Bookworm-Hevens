<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/bookstore">
        <html>
            <head>
                <title>Book List - Bookwormm’s Haven</title>
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    margin: 20px;
                    padding: 20px;
                    background-color: #f9f9f9;
                    }
                    h2 {
                    color: #333333;
                    }
                    table {
                    width: 100%;
                    border-collapse: collapse;
                    margin-bottom: 20px;
                    }
                    th, td {
                    border: 1px solid #dddddd;
                    padding: 12px;
                    text-align: left;
                    }
                    th {
                    background-color: #988f6f;
                    color: white;
                    }
                    tr:nth-child(even) {
                    background-color: #f2f2f2;
                    }
                    tr:hover {
                    background-color: #ddd;
                    }
                    .nav {
                    margin-bottom: 20px;
                    }
                    .nav a {
                    margin-right: 15px;
                    text-decoration: none;
                    color: #ffffff;
                    background-color: #000000;
                    padding: 10px 15px;
                    border-radius: 5px;
                    }
                    .nav a:hover {
                    background-color: #444444;
                    }
                </style>
            </head>
            <body>
                <div class="nav">
                    <a href="home.html">Home</a>
                    <a href="library.html">Books</a>
                </div>
                <h2>Book Collection</h2>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Year</th>
                        <th>Price</th>
                        <th>ISBN</th>
                    </tr>
                    <xsl:for-each select="book">
                        <tr>
                            <td>
                                <xsl:value-of select="title" />
                            </td>
                            <td>
                                <xsl:value-of select="author" />
                            </td>
                            <td>
                                <xsl:value-of select="genre" />
                            </td>
                            <td>
                                <xsl:value-of select="year" />
                            </td>
                            <td>
                                <xsl:value-of select="price" />
                            </td>
                            <td>
                                <xsl:value-of select="isbn" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <div class="nav">
                    <a href="#">Back to Top</a>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>