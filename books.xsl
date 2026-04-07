<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Library Books</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #a5f8e9;
          }
          h1 {
            text-align: center;
            color: #2f7e33;
          }
          .book {
            background-color: #5ebdec;
            border: 1px solid #040101;
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 20px;
            display: flex;
            align-items: flex-start;
            gap: 15px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
          }
          .book img {
            max-width: 120px;
            border-radius: 5px;
          }
          .book-details {
            flex: 1;
          }
          .book h2 {
            margin: 0 0 10px 0;
            color: #1b5e20;
          }
          .book p {
            margin: 3px 0;
          }
        </style>
      </head>
      <body>
        <h1>Library Books</h1>
        <xsl:for-each select="books/book">
          <div class="book">
            <xsl:if test="image">
              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="image"/>
                </xsl:attribute>
              </img>
            </xsl:if>
            <div class="book-details">
              <h2><xsl:value-of select="title"/></h2>
              <p><strong>Author:</strong> <xsl:value-of select="author"/></p>
              <p><strong>Year:</strong> <xsl:value-of select="year"/></p>
              <p><xsl:value-of select="description"/></p>
              <p><strong>Price:</strong> <xsl:value-of select="price"/></p>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>